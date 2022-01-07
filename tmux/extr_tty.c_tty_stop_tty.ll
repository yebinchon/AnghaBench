; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_stop_tty.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_stop_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.winsize = type { i64 }

@TTY_STARTED = common dso_local global i32 0, align 4
@TTY_BLOCK = common dso_local global i32 0, align 4
@TIOCGWINSZ = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@TTYC_CSR = common dso_local global i32 0, align 4
@TTYC_RMACS = common dso_local global i32 0, align 4
@TTYC_SGR0 = common dso_local global i32 0, align 4
@TTYC_RMKX = common dso_local global i32 0, align 4
@TTYC_CLEAR = common dso_local global i32 0, align 4
@TTYC_SS = common dso_local global i32 0, align 4
@TTYC_SE = common dso_local global i32 0, align 4
@MODE_BRACKETPASTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"\1B[?2004l\00", align 1
@TTYC_CR = common dso_local global i32 0, align 4
@TTYC_CNORM = common dso_local global i32 0, align 4
@TTYC_KMOUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"\1B[?1000l\1B[?1002l\1B[?1006l\1B[?1005l\00", align 1
@TTYC_XT = common dso_local global i32 0, align 4
@TTY_FOCUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"\1B[?1004l\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\1B[?69l\00", align 1
@TTYC_RMCUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_stop_tty(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.winsize, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %4 = load %struct.tty*, %struct.tty** %2, align 8
  %5 = getelementptr inbounds %struct.tty, %struct.tty* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @TTY_STARTED, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %206

11:                                               ; preds = %1
  %12 = load i32, i32* @TTY_STARTED, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.tty*, %struct.tty** %2, align 8
  %15 = getelementptr inbounds %struct.tty, %struct.tty* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.tty*, %struct.tty** %2, align 8
  %19 = getelementptr inbounds %struct.tty, %struct.tty* %18, i32 0, i32 8
  %20 = call i32 @event_del(i32* %19)
  %21 = load i32, i32* @TTY_BLOCK, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.tty*, %struct.tty** %2, align 8
  %24 = getelementptr inbounds %struct.tty, %struct.tty* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.tty*, %struct.tty** %2, align 8
  %28 = getelementptr inbounds %struct.tty, %struct.tty* %27, i32 0, i32 7
  %29 = call i32 @event_del(i32* %28)
  %30 = load %struct.tty*, %struct.tty** %2, align 8
  %31 = getelementptr inbounds %struct.tty, %struct.tty* %30, i32 0, i32 6
  %32 = call i32 @event_del(i32* %31)
  %33 = load %struct.tty*, %struct.tty** %2, align 8
  %34 = getelementptr inbounds %struct.tty, %struct.tty* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TIOCGWINSZ, align 4
  %37 = call i32 @ioctl(i32 %35, i32 %36, %struct.winsize* %3)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %11
  br label %206

40:                                               ; preds = %11
  %41 = load %struct.tty*, %struct.tty** %2, align 8
  %42 = getelementptr inbounds %struct.tty, %struct.tty* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TCSANOW, align 4
  %45 = load %struct.tty*, %struct.tty** %2, align 8
  %46 = getelementptr inbounds %struct.tty, %struct.tty* %45, i32 0, i32 5
  %47 = call i32 @tcsetattr(i32 %43, i32 %44, i32* %46)
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %206

50:                                               ; preds = %40
  %51 = load %struct.tty*, %struct.tty** %2, align 8
  %52 = load %struct.tty*, %struct.tty** %2, align 8
  %53 = getelementptr inbounds %struct.tty, %struct.tty* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @TTYC_CSR, align 4
  %56 = getelementptr inbounds %struct.winsize, %struct.winsize* %3, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %57, 1
  %59 = call i8* @tty_term_string2(i32 %54, i32 %55, i32 0, i64 %58)
  %60 = call i32 @tty_raw(%struct.tty* %51, i8* %59)
  %61 = load %struct.tty*, %struct.tty** %2, align 8
  %62 = call i64 @tty_acs_needed(%struct.tty* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %50
  %65 = load %struct.tty*, %struct.tty** %2, align 8
  %66 = load %struct.tty*, %struct.tty** %2, align 8
  %67 = getelementptr inbounds %struct.tty, %struct.tty* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @TTYC_RMACS, align 4
  %70 = call i8* @tty_term_string(i32 %68, i32 %69)
  %71 = call i32 @tty_raw(%struct.tty* %65, i8* %70)
  br label %72

72:                                               ; preds = %64, %50
  %73 = load %struct.tty*, %struct.tty** %2, align 8
  %74 = load %struct.tty*, %struct.tty** %2, align 8
  %75 = getelementptr inbounds %struct.tty, %struct.tty* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @TTYC_SGR0, align 4
  %78 = call i8* @tty_term_string(i32 %76, i32 %77)
  %79 = call i32 @tty_raw(%struct.tty* %73, i8* %78)
  %80 = load %struct.tty*, %struct.tty** %2, align 8
  %81 = load %struct.tty*, %struct.tty** %2, align 8
  %82 = getelementptr inbounds %struct.tty, %struct.tty* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @TTYC_RMKX, align 4
  %85 = call i8* @tty_term_string(i32 %83, i32 %84)
  %86 = call i32 @tty_raw(%struct.tty* %80, i8* %85)
  %87 = load %struct.tty*, %struct.tty** %2, align 8
  %88 = load %struct.tty*, %struct.tty** %2, align 8
  %89 = getelementptr inbounds %struct.tty, %struct.tty* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @TTYC_CLEAR, align 4
  %92 = call i8* @tty_term_string(i32 %90, i32 %91)
  %93 = call i32 @tty_raw(%struct.tty* %87, i8* %92)
  %94 = load %struct.tty*, %struct.tty** %2, align 8
  %95 = getelementptr inbounds %struct.tty, %struct.tty* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @TTYC_SS, align 4
  %98 = call i64 @tty_term_has(i32 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %129

100:                                              ; preds = %72
  %101 = load %struct.tty*, %struct.tty** %2, align 8
  %102 = getelementptr inbounds %struct.tty, %struct.tty* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %129

105:                                              ; preds = %100
  %106 = load %struct.tty*, %struct.tty** %2, align 8
  %107 = getelementptr inbounds %struct.tty, %struct.tty* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @TTYC_SE, align 4
  %110 = call i64 @tty_term_has(i32 %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %105
  %113 = load %struct.tty*, %struct.tty** %2, align 8
  %114 = load %struct.tty*, %struct.tty** %2, align 8
  %115 = getelementptr inbounds %struct.tty, %struct.tty* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @TTYC_SE, align 4
  %118 = call i8* @tty_term_string(i32 %116, i32 %117)
  %119 = call i32 @tty_raw(%struct.tty* %113, i8* %118)
  br label %128

120:                                              ; preds = %105
  %121 = load %struct.tty*, %struct.tty** %2, align 8
  %122 = load %struct.tty*, %struct.tty** %2, align 8
  %123 = getelementptr inbounds %struct.tty, %struct.tty* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @TTYC_SS, align 4
  %126 = call i8* @tty_term_string1(i32 %124, i32 %125, i32 0)
  %127 = call i32 @tty_raw(%struct.tty* %121, i8* %126)
  br label %128

128:                                              ; preds = %120, %112
  br label %129

129:                                              ; preds = %128, %100, %72
  %130 = load %struct.tty*, %struct.tty** %2, align 8
  %131 = getelementptr inbounds %struct.tty, %struct.tty* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @MODE_BRACKETPASTE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load %struct.tty*, %struct.tty** %2, align 8
  %138 = call i32 @tty_raw(%struct.tty* %137, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %129
  %140 = load %struct.tty*, %struct.tty** %2, align 8
  %141 = load %struct.tty*, %struct.tty** %2, align 8
  %142 = getelementptr inbounds %struct.tty, %struct.tty* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @TTYC_CR, align 4
  %145 = call i8* @tty_term_string(i32 %143, i32 %144)
  %146 = call i32 @tty_raw(%struct.tty* %140, i8* %145)
  %147 = load %struct.tty*, %struct.tty** %2, align 8
  %148 = load %struct.tty*, %struct.tty** %2, align 8
  %149 = getelementptr inbounds %struct.tty, %struct.tty* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @TTYC_CNORM, align 4
  %152 = call i8* @tty_term_string(i32 %150, i32 %151)
  %153 = call i32 @tty_raw(%struct.tty* %147, i8* %152)
  %154 = load %struct.tty*, %struct.tty** %2, align 8
  %155 = getelementptr inbounds %struct.tty, %struct.tty* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @TTYC_KMOUS, align 4
  %158 = call i64 @tty_term_has(i32 %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %139
  %161 = load %struct.tty*, %struct.tty** %2, align 8
  %162 = call i32 @tty_raw(%struct.tty* %161, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %163

163:                                              ; preds = %160, %139
  %164 = load %struct.tty*, %struct.tty** %2, align 8
  %165 = getelementptr inbounds %struct.tty, %struct.tty* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @TTYC_XT, align 4
  %168 = call i64 @tty_term_flag(i32 %166, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %187

170:                                              ; preds = %163
  %171 = load %struct.tty*, %struct.tty** %2, align 8
  %172 = getelementptr inbounds %struct.tty, %struct.tty* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @TTY_FOCUS, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %170
  %178 = load i32, i32* @TTY_FOCUS, align 4
  %179 = xor i32 %178, -1
  %180 = load %struct.tty*, %struct.tty** %2, align 8
  %181 = getelementptr inbounds %struct.tty, %struct.tty* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = and i32 %182, %179
  store i32 %183, i32* %181, align 8
  %184 = load %struct.tty*, %struct.tty** %2, align 8
  %185 = call i32 @tty_raw(%struct.tty* %184, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %186

186:                                              ; preds = %177, %170
  br label %187

187:                                              ; preds = %186, %163
  %188 = load %struct.tty*, %struct.tty** %2, align 8
  %189 = call i64 @tty_use_margin(%struct.tty* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %187
  %192 = load %struct.tty*, %struct.tty** %2, align 8
  %193 = call i32 @tty_raw(%struct.tty* %192, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %194

194:                                              ; preds = %191, %187
  %195 = load %struct.tty*, %struct.tty** %2, align 8
  %196 = load %struct.tty*, %struct.tty** %2, align 8
  %197 = getelementptr inbounds %struct.tty, %struct.tty* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @TTYC_RMCUP, align 4
  %200 = call i8* @tty_term_string(i32 %198, i32 %199)
  %201 = call i32 @tty_raw(%struct.tty* %195, i8* %200)
  %202 = load %struct.tty*, %struct.tty** %2, align 8
  %203 = getelementptr inbounds %struct.tty, %struct.tty* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @setblocking(i32 %204, i32 1)
  br label %206

206:                                              ; preds = %194, %49, %39, %10
  ret void
}

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.winsize*) #1

declare dso_local i32 @tcsetattr(i32, i32, i32*) #1

declare dso_local i32 @tty_raw(%struct.tty*, i8*) #1

declare dso_local i8* @tty_term_string2(i32, i32, i32, i64) #1

declare dso_local i64 @tty_acs_needed(%struct.tty*) #1

declare dso_local i8* @tty_term_string(i32, i32) #1

declare dso_local i64 @tty_term_has(i32, i32) #1

declare dso_local i8* @tty_term_string1(i32, i32, i32) #1

declare dso_local i64 @tty_term_flag(i32, i32) #1

declare dso_local i64 @tty_use_margin(%struct.tty*) #1

declare dso_local i32 @setblocking(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
