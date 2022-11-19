classdef Calculator_App_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure    matlab.ui.Figure
        EditField   matlab.ui.control.EditField
        Button_add  matlab.ui.control.Button
        Button_eq   matlab.ui.control.Button
        Button_rt   matlab.ui.control.Button
        Button_sq   matlab.ui.control.Button
        Button_min  matlab.ui.control.Button
        Button_pi   matlab.ui.control.Button
        Button0     matlab.ui.control.Button
        Button_dec  matlab.ui.control.Button
        Button_mul  matlab.ui.control.Button
        Button3     matlab.ui.control.Button
        Button2     matlab.ui.control.Button
        Button1     matlab.ui.control.Button
        Button_div  matlab.ui.control.Button
        Button6     matlab.ui.control.Button
        Button5     matlab.ui.control.Button
        Button4     matlab.ui.control.Button
        ButtonC     matlab.ui.control.Button
        Button9     matlab.ui.control.Button
        Button8     matlab.ui.control.Button
        Button7     matlab.ui.control.Button
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: Button0, Button1, Button2, Button3, 
        % ...and 12 other components
        function ButtonPushed(app, event)
            app.EditField.Value= [app.EditField.Value event.Source.Text];
        end

        % Button pushed function: ButtonC
        function ButtonCPushed(app, event)
            app.EditField.Value='';
        end

        % Button pushed function: Button_eq
        function Button_eqPushed(app, event)
            app.EditField.Value =[app.EditField.Value event.Source.Text ...
                num2str(eval(app.EditField.Value))];
        end

        % Button pushed function: Button_rt
        function Button_rtPushed(app, event)
            app.EditField.Value= num2str(sqrt(str2double(app.EditField.Value)));
        end

        % Button pushed function: Button_sq
        function Button_sqPushed(app, event)
            app.EditField.Value= num2str((str2double(app.EditField.Value)^2));
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Color = [0.149 0.149 0.149];
            app.UIFigure.Position = [100 100 435 552];
            app.UIFigure.Name = 'MATLAB App';

            % Create Button7
            app.Button7 = uibutton(app.UIFigure, 'push');
            app.Button7.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button7.BackgroundColor = [0.651 0.651 0.651];
            app.Button7.FontSize = 24;
            app.Button7.FontColor = [1 1 1];
            app.Button7.Position = [23 347 84 54];
            app.Button7.Text = '7';

            % Create Button8
            app.Button8 = uibutton(app.UIFigure, 'push');
            app.Button8.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button8.BackgroundColor = [0.651 0.651 0.651];
            app.Button8.FontSize = 24;
            app.Button8.FontColor = [1 1 1];
            app.Button8.Position = [123 347 84 54];
            app.Button8.Text = '8';

            % Create Button9
            app.Button9 = uibutton(app.UIFigure, 'push');
            app.Button9.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button9.BackgroundColor = [0.651 0.651 0.651];
            app.Button9.FontSize = 24;
            app.Button9.FontColor = [1 1 1];
            app.Button9.Position = [228 347 84 54];
            app.Button9.Text = '9';

            % Create ButtonC
            app.ButtonC = uibutton(app.UIFigure, 'push');
            app.ButtonC.ButtonPushedFcn = createCallbackFcn(app, @ButtonCPushed, true);
            app.ButtonC.BackgroundColor = [0.651 0.651 0.651];
            app.ButtonC.FontSize = 24;
            app.ButtonC.FontColor = [1 1 1];
            app.ButtonC.Position = [330 347 84 54];
            app.ButtonC.Text = 'C';

            % Create Button4
            app.Button4 = uibutton(app.UIFigure, 'push');
            app.Button4.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button4.BackgroundColor = [0.651 0.651 0.651];
            app.Button4.FontSize = 24;
            app.Button4.FontColor = [1 1 1];
            app.Button4.Position = [23 266 84 54];
            app.Button4.Text = '4';

            % Create Button5
            app.Button5 = uibutton(app.UIFigure, 'push');
            app.Button5.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button5.BackgroundColor = [0.651 0.651 0.651];
            app.Button5.FontSize = 24;
            app.Button5.FontColor = [1 1 1];
            app.Button5.Position = [123 266 84 54];
            app.Button5.Text = '5';

            % Create Button6
            app.Button6 = uibutton(app.UIFigure, 'push');
            app.Button6.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button6.BackgroundColor = [0.651 0.651 0.651];
            app.Button6.FontSize = 24;
            app.Button6.FontColor = [1 1 1];
            app.Button6.Position = [228 266 84 54];
            app.Button6.Text = '6';

            % Create Button_div
            app.Button_div = uibutton(app.UIFigure, 'push');
            app.Button_div.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button_div.BackgroundColor = [0.651 0.651 0.651];
            app.Button_div.FontSize = 24;
            app.Button_div.FontColor = [1 1 1];
            app.Button_div.Position = [330 266 84 54];
            app.Button_div.Text = '/';

            % Create Button1
            app.Button1 = uibutton(app.UIFigure, 'push');
            app.Button1.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button1.BackgroundColor = [0.651 0.651 0.651];
            app.Button1.FontSize = 24;
            app.Button1.FontColor = [1 1 1];
            app.Button1.Position = [23 188 84 54];
            app.Button1.Text = '1';

            % Create Button2
            app.Button2 = uibutton(app.UIFigure, 'push');
            app.Button2.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button2.BackgroundColor = [0.651 0.651 0.651];
            app.Button2.FontSize = 24;
            app.Button2.FontColor = [1 1 1];
            app.Button2.Position = [123 188 84 54];
            app.Button2.Text = '2';

            % Create Button3
            app.Button3 = uibutton(app.UIFigure, 'push');
            app.Button3.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button3.BackgroundColor = [0.651 0.651 0.651];
            app.Button3.FontSize = 24;
            app.Button3.FontColor = [1 1 1];
            app.Button3.Position = [228 188 84 54];
            app.Button3.Text = '3';

            % Create Button_mul
            app.Button_mul = uibutton(app.UIFigure, 'push');
            app.Button_mul.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button_mul.BackgroundColor = [0.651 0.651 0.651];
            app.Button_mul.FontSize = 24;
            app.Button_mul.FontColor = [1 1 1];
            app.Button_mul.Position = [330 188 84 54];
            app.Button_mul.Text = '*';

            % Create Button_dec
            app.Button_dec = uibutton(app.UIFigure, 'push');
            app.Button_dec.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button_dec.BackgroundColor = [0.651 0.651 0.651];
            app.Button_dec.FontSize = 24;
            app.Button_dec.FontColor = [1 1 1];
            app.Button_dec.Position = [23 116 84 54];
            app.Button_dec.Text = '.';

            % Create Button0
            app.Button0 = uibutton(app.UIFigure, 'push');
            app.Button0.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button0.BackgroundColor = [0.651 0.651 0.651];
            app.Button0.FontSize = 24;
            app.Button0.FontColor = [1 1 1];
            app.Button0.Position = [123 116 84 54];
            app.Button0.Text = '0';

            % Create Button_pi
            app.Button_pi = uibutton(app.UIFigure, 'push');
            app.Button_pi.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button_pi.BackgroundColor = [0.651 0.651 0.651];
            app.Button_pi.FontSize = 24;
            app.Button_pi.FontColor = [1 1 1];
            app.Button_pi.Position = [228 116 86 54];
            app.Button_pi.Text = 'pi';

            % Create Button_min
            app.Button_min = uibutton(app.UIFigure, 'push');
            app.Button_min.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button_min.BackgroundColor = [0.651 0.651 0.651];
            app.Button_min.FontSize = 24;
            app.Button_min.FontColor = [1 1 1];
            app.Button_min.Position = [330 116 84 54];
            app.Button_min.Text = '-';

            % Create Button_sq
            app.Button_sq = uibutton(app.UIFigure, 'push');
            app.Button_sq.ButtonPushedFcn = createCallbackFcn(app, @Button_sqPushed, true);
            app.Button_sq.BackgroundColor = [0.651 0.651 0.651];
            app.Button_sq.FontSize = 24;
            app.Button_sq.FontColor = [1 1 1];
            app.Button_sq.Position = [23 47 84 54];
            app.Button_sq.Text = 'x²';

            % Create Button_rt
            app.Button_rt = uibutton(app.UIFigure, 'push');
            app.Button_rt.ButtonPushedFcn = createCallbackFcn(app, @Button_rtPushed, true);
            app.Button_rt.BackgroundColor = [0.651 0.651 0.651];
            app.Button_rt.FontSize = 24;
            app.Button_rt.FontColor = [1 1 1];
            app.Button_rt.Position = [123 47 84 54];
            app.Button_rt.Text = '√';

            % Create Button_eq
            app.Button_eq = uibutton(app.UIFigure, 'push');
            app.Button_eq.ButtonPushedFcn = createCallbackFcn(app, @Button_eqPushed, true);
            app.Button_eq.BackgroundColor = [0.651 0.651 0.651];
            app.Button_eq.FontSize = 24;
            app.Button_eq.FontColor = [1 1 1];
            app.Button_eq.Position = [228 47 84 54];
            app.Button_eq.Text = '=';

            % Create Button_add
            app.Button_add = uibutton(app.UIFigure, 'push');
            app.Button_add.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button_add.BackgroundColor = [0.651 0.651 0.651];
            app.Button_add.FontSize = 24;
            app.Button_add.FontColor = [1 1 1];
            app.Button_add.Position = [330 47 84 54];
            app.Button_add.Text = '+';

            % Create EditField
            app.EditField = uieditfield(app.UIFigure, 'text');
            app.EditField.FontSize = 24;
            app.EditField.BackgroundColor = [0.9412 0.9412 0.9412];
            app.EditField.Position = [23 446 391 60];

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = Calculator_App_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end