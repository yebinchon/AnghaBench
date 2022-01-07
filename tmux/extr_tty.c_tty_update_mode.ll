; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_update_mode.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_update_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i64, i32, i32 }
%struct.screen = type { i64, i32 }

@TTY_NOCURSOR = common dso_local global i32 0, align 4
@MODE_CURSOR = common dso_local global i32 0, align 4
@MODE_BLINKING = common dso_local global i32 0, align 4
@TTYC_CVVIS = common dso_local global i32 0, align 4
@TTYC_CNORM = common dso_local global i32 0, align 4
@TTYC_CIVIS = common dso_local global i32 0, align 4
@TTYC_SS = common dso_local global i32 0, align 4
@TTYC_SE = common dso_local global i32 0, align 4
@ALL_MOUSE_MODES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"\1B[?1006h\00", align 1
@MODE_MOUSE_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"\1B[?1003h\00", align 1
@MODE_MOUSE_BUTTON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"\1B[?1002h\00", align 1
@MODE_MOUSE_STANDARD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"\1B[?1000h\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"\1B[?1003l\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"\1B[?1002l\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"\1B[?1000l\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"\1B[?1006l\00", align 1
@MODE_BRACKETPASTE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"\1B[?2004h\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"\1B[?2004l\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_update_mode(%struct.tty* %0, i32 %1, %struct.screen* %2) #0 {
  %4 = alloca %struct.tty*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.screen*, align 8
  %7 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.screen* %2, %struct.screen** %6, align 8
  %8 = load %struct.screen*, %struct.screen** %6, align 8
  %9 = icmp ne %struct.screen* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = load %struct.screen*, %struct.screen** %6, align 8
  %12 = getelementptr inbounds %struct.screen, %struct.screen* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.tty*, %struct.tty** %4, align 8
  %15 = getelementptr inbounds %struct.tty, %struct.tty* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @strcmp(i32 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %10
  %20 = load %struct.tty*, %struct.tty** %4, align 8
  %21 = load %struct.screen*, %struct.screen** %6, align 8
  %22 = getelementptr inbounds %struct.screen, %struct.screen* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @tty_force_cursor_colour(%struct.tty* %20, i32 %23)
  br label %25

25:                                               ; preds = %19, %10, %3
  %26 = load %struct.tty*, %struct.tty** %4, align 8
  %27 = getelementptr inbounds %struct.tty, %struct.tty* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @TTY_NOCURSOR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32, i32* @MODE_CURSOR, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %32, %25
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.tty*, %struct.tty** %4, align 8
  %40 = getelementptr inbounds %struct.tty, %struct.tty* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %38, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @MODE_BLINKING, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %37
  %48 = load %struct.tty*, %struct.tty** %4, align 8
  %49 = getelementptr inbounds %struct.tty, %struct.tty* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @TTYC_CVVIS, align 4
  %52 = call i64 @tty_term_has(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load %struct.tty*, %struct.tty** %4, align 8
  %56 = load i32, i32* @TTYC_CVVIS, align 4
  %57 = call i32 @tty_putcode(%struct.tty* %55, i32 %56)
  br label %62

58:                                               ; preds = %47
  %59 = load %struct.tty*, %struct.tty** %4, align 8
  %60 = load i32, i32* @TTYC_CNORM, align 4
  %61 = call i32 @tty_putcode(%struct.tty* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i32, i32* @MODE_CURSOR, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %62, %37
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @MODE_CURSOR, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @MODE_CURSOR, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.tty*, %struct.tty** %4, align 8
  %78 = load i32, i32* @TTYC_CNORM, align 4
  %79 = call i32 @tty_putcode(%struct.tty* %77, i32 %78)
  br label %84

80:                                               ; preds = %71
  %81 = load %struct.tty*, %struct.tty** %4, align 8
  %82 = load i32, i32* @TTYC_CIVIS, align 4
  %83 = call i32 @tty_putcode(%struct.tty* %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %76
  br label %85

85:                                               ; preds = %84, %66
  %86 = load %struct.screen*, %struct.screen** %6, align 8
  %87 = icmp ne %struct.screen* %86, null
  br i1 %87, label %88, label %133

88:                                               ; preds = %85
  %89 = load %struct.tty*, %struct.tty** %4, align 8
  %90 = getelementptr inbounds %struct.tty, %struct.tty* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.screen*, %struct.screen** %6, align 8
  %93 = getelementptr inbounds %struct.screen, %struct.screen* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %91, %94
  br i1 %95, label %96, label %133

96:                                               ; preds = %88
  %97 = load %struct.tty*, %struct.tty** %4, align 8
  %98 = getelementptr inbounds %struct.tty, %struct.tty* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @TTYC_SS, align 4
  %101 = call i64 @tty_term_has(i32 %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %127

103:                                              ; preds = %96
  %104 = load %struct.screen*, %struct.screen** %6, align 8
  %105 = getelementptr inbounds %struct.screen, %struct.screen* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %103
  %109 = load %struct.tty*, %struct.tty** %4, align 8
  %110 = getelementptr inbounds %struct.tty, %struct.tty* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @TTYC_SE, align 4
  %113 = call i64 @tty_term_has(i32 %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load %struct.tty*, %struct.tty** %4, align 8
  %117 = load i32, i32* @TTYC_SE, align 4
  %118 = call i32 @tty_putcode(%struct.tty* %116, i32 %117)
  br label %126

119:                                              ; preds = %108, %103
  %120 = load %struct.tty*, %struct.tty** %4, align 8
  %121 = load i32, i32* @TTYC_SS, align 4
  %122 = load %struct.screen*, %struct.screen** %6, align 8
  %123 = getelementptr inbounds %struct.screen, %struct.screen* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @tty_putcode1(%struct.tty* %120, i32 %121, i64 %124)
  br label %126

126:                                              ; preds = %119, %115
  br label %127

127:                                              ; preds = %126, %96
  %128 = load %struct.screen*, %struct.screen** %6, align 8
  %129 = getelementptr inbounds %struct.screen, %struct.screen* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.tty*, %struct.tty** %4, align 8
  %132 = getelementptr inbounds %struct.tty, %struct.tty* %131, i32 0, i32 2
  store i64 %130, i64* %132, align 8
  br label %133

133:                                              ; preds = %127, %88, %85
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @ALL_MOUSE_MODES, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %208

138:                                              ; preds = %133
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* @ALL_MOUSE_MODES, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %172

143:                                              ; preds = %138
  %144 = load %struct.tty*, %struct.tty** %4, align 8
  %145 = call i32 @tty_puts(%struct.tty* %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @MODE_MOUSE_ALL, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %143
  %151 = load %struct.tty*, %struct.tty** %4, align 8
  %152 = call i32 @tty_puts(%struct.tty* %151, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %171

153:                                              ; preds = %143
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @MODE_MOUSE_BUTTON, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load %struct.tty*, %struct.tty** %4, align 8
  %160 = call i32 @tty_puts(%struct.tty* %159, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %170

161:                                              ; preds = %153
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* @MODE_MOUSE_STANDARD, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load %struct.tty*, %struct.tty** %4, align 8
  %168 = call i32 @tty_puts(%struct.tty* %167, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %169

169:                                              ; preds = %166, %161
  br label %170

170:                                              ; preds = %169, %158
  br label %171

171:                                              ; preds = %170, %150
  br label %207

172:                                              ; preds = %138
  %173 = load %struct.tty*, %struct.tty** %4, align 8
  %174 = getelementptr inbounds %struct.tty, %struct.tty* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @MODE_MOUSE_ALL, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %172
  %180 = load %struct.tty*, %struct.tty** %4, align 8
  %181 = call i32 @tty_puts(%struct.tty* %180, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %204

182:                                              ; preds = %172
  %183 = load %struct.tty*, %struct.tty** %4, align 8
  %184 = getelementptr inbounds %struct.tty, %struct.tty* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @MODE_MOUSE_BUTTON, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %182
  %190 = load %struct.tty*, %struct.tty** %4, align 8
  %191 = call i32 @tty_puts(%struct.tty* %190, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %203

192:                                              ; preds = %182
  %193 = load %struct.tty*, %struct.tty** %4, align 8
  %194 = getelementptr inbounds %struct.tty, %struct.tty* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @MODE_MOUSE_STANDARD, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %192
  %200 = load %struct.tty*, %struct.tty** %4, align 8
  %201 = call i32 @tty_puts(%struct.tty* %200, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %202

202:                                              ; preds = %199, %192
  br label %203

203:                                              ; preds = %202, %189
  br label %204

204:                                              ; preds = %203, %179
  %205 = load %struct.tty*, %struct.tty** %4, align 8
  %206 = call i32 @tty_puts(%struct.tty* %205, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %207

207:                                              ; preds = %204, %171
  br label %208

208:                                              ; preds = %207, %133
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* @MODE_BRACKETPASTE, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %225

213:                                              ; preds = %208
  %214 = load i32, i32* %5, align 4
  %215 = load i32, i32* @MODE_BRACKETPASTE, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %213
  %219 = load %struct.tty*, %struct.tty** %4, align 8
  %220 = call i32 @tty_puts(%struct.tty* %219, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %224

221:                                              ; preds = %213
  %222 = load %struct.tty*, %struct.tty** %4, align 8
  %223 = call i32 @tty_puts(%struct.tty* %222, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %224

224:                                              ; preds = %221, %218
  br label %225

225:                                              ; preds = %224, %208
  %226 = load i32, i32* %5, align 4
  %227 = load %struct.tty*, %struct.tty** %4, align 8
  %228 = getelementptr inbounds %struct.tty, %struct.tty* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 4
  ret void
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @tty_force_cursor_colour(%struct.tty*, i32) #1

declare dso_local i64 @tty_term_has(i32, i32) #1

declare dso_local i32 @tty_putcode(%struct.tty*, i32) #1

declare dso_local i32 @tty_putcode1(%struct.tty*, i32, i64) #1

declare dso_local i32 @tty_puts(%struct.tty*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
