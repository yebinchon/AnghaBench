; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_start_tty.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_start_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32*, i32*, i64, i32, i32, i32, i32, %struct.client* }
%struct.client = type { i32 }
%struct.termios = type { i32, i32, i32, i32* }

@IXON = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@INLCR = common dso_local global i32 0, align 4
@IGNCR = common dso_local global i32 0, align 4
@IMAXBEL = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@ONLCR = common dso_local global i32 0, align 4
@OCRNL = common dso_local global i32 0, align 4
@ONLRET = common dso_local global i32 0, align 4
@IEXTEN = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@ECHOE = common dso_local global i32 0, align 4
@ECHONL = common dso_local global i32 0, align 4
@ECHOCTL = common dso_local global i32 0, align 4
@ECHOPRT = common dso_local global i32 0, align 4
@ECHOKE = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@TCSANOW = common dso_local global i32 0, align 4
@TCIOFLUSH = common dso_local global i32 0, align 4
@TTYC_SMCUP = common dso_local global i32 0, align 4
@TTYC_SMKX = common dso_local global i32 0, align 4
@TTYC_CLEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: using capabilities for ACS\00", align 1
@TTYC_ENACS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: using UTF-8 for ACS\00", align 1
@TTYC_CNORM = common dso_local global i32 0, align 4
@TTYC_KMOUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"\1B[?1000l\1B[?1002l\1B[?1006l\1B[?1005l\00", align 1
@TTYC_XT = common dso_local global i32 0, align 4
@global_options = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"focus-events\00", align 1
@TTY_FOCUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"\1B[?1004h\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\1B[c\00", align 1
@TTY_STARTED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_start_tty(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.client*, align 8
  %4 = alloca %struct.termios, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %5 = load %struct.tty*, %struct.tty** %2, align 8
  %6 = getelementptr inbounds %struct.tty, %struct.tty* %5, i32 0, i32 8
  %7 = load %struct.client*, %struct.client** %6, align 8
  store %struct.client* %7, %struct.client** %3, align 8
  %8 = load %struct.tty*, %struct.tty** %2, align 8
  %9 = getelementptr inbounds %struct.tty, %struct.tty* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %105

12:                                               ; preds = %1
  %13 = load %struct.tty*, %struct.tty** %2, align 8
  %14 = getelementptr inbounds %struct.tty, %struct.tty* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.tty*, %struct.tty** %2, align 8
  %17 = getelementptr inbounds %struct.tty, %struct.tty* %16, i32 0, i32 6
  %18 = call i64 @tcgetattr(i32 %15, i32* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %105

20:                                               ; preds = %12
  %21 = load %struct.tty*, %struct.tty** %2, align 8
  %22 = getelementptr inbounds %struct.tty, %struct.tty* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @setblocking(i32 %23, i32 0)
  %25 = load %struct.tty*, %struct.tty** %2, align 8
  %26 = getelementptr inbounds %struct.tty, %struct.tty* %25, i32 0, i32 7
  %27 = call i32 @event_add(i32* %26, i32* null)
  %28 = load %struct.tty*, %struct.tty** %2, align 8
  %29 = getelementptr inbounds %struct.tty, %struct.tty* %28, i32 0, i32 6
  %30 = call i32 @memcpy(%struct.termios* %4, i32* %29, i32 24)
  %31 = load i32, i32* @IXON, align 4
  %32 = load i32, i32* @IXOFF, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @ICRNL, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @INLCR, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @IGNCR, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @IMAXBEL, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @ISTRIP, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %44
  store i32 %47, i32* %45, align 8
  %48 = load i32, i32* @IGNBRK, align 4
  %49 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 8
  %52 = load i32, i32* @OPOST, align 4
  %53 = load i32, i32* @ONLCR, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @OCRNL, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @ONLRET, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %59
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @IEXTEN, align 4
  %64 = load i32, i32* @ICANON, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @ECHO, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @ECHOE, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @ECHONL, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @ECHOCTL, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @ECHOPRT, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @ECHOKE, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @ISIG, align 4
  %79 = or i32 %77, %78
  %80 = xor i32 %79, -1
  %81 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, %80
  store i32 %83, i32* %81, align 8
  %84 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @VMIN, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 1, i32* %87, align 4
  %88 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @VTIME, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 0, i32* %91, align 4
  %92 = load %struct.tty*, %struct.tty** %2, align 8
  %93 = getelementptr inbounds %struct.tty, %struct.tty* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @TCSANOW, align 4
  %96 = call i64 @tcsetattr(i32 %94, i32 %95, %struct.termios* %4)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %20
  %99 = load %struct.tty*, %struct.tty** %2, align 8
  %100 = getelementptr inbounds %struct.tty, %struct.tty* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @TCIOFLUSH, align 4
  %103 = call i32 @tcflush(i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %98, %20
  br label %105

105:                                              ; preds = %104, %12, %1
  %106 = load %struct.tty*, %struct.tty** %2, align 8
  %107 = load i32, i32* @TTYC_SMCUP, align 4
  %108 = call i32 @tty_putcode(%struct.tty* %106, i32 %107)
  %109 = load %struct.tty*, %struct.tty** %2, align 8
  %110 = load i32, i32* @TTYC_SMKX, align 4
  %111 = call i32 @tty_putcode(%struct.tty* %109, i32 %110)
  %112 = load %struct.tty*, %struct.tty** %2, align 8
  %113 = load i32, i32* @TTYC_CLEAR, align 4
  %114 = call i32 @tty_putcode(%struct.tty* %112, i32 %113)
  %115 = load %struct.tty*, %struct.tty** %2, align 8
  %116 = call i64 @tty_acs_needed(%struct.tty* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %105
  %119 = load %struct.client*, %struct.client** %3, align 8
  %120 = getelementptr inbounds %struct.client, %struct.client* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @log_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %121)
  %123 = load %struct.tty*, %struct.tty** %2, align 8
  %124 = load i32, i32* @TTYC_ENACS, align 4
  %125 = call i32 @tty_putcode(%struct.tty* %123, i32 %124)
  br label %131

126:                                              ; preds = %105
  %127 = load %struct.client*, %struct.client** %3, align 8
  %128 = getelementptr inbounds %struct.client, %struct.client* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @log_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %126, %118
  %132 = load %struct.tty*, %struct.tty** %2, align 8
  %133 = load i32, i32* @TTYC_CNORM, align 4
  %134 = call i32 @tty_putcode(%struct.tty* %132, i32 %133)
  %135 = load %struct.tty*, %struct.tty** %2, align 8
  %136 = getelementptr inbounds %struct.tty, %struct.tty* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @TTYC_KMOUS, align 4
  %139 = call i64 @tty_term_has(i32 %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %131
  %142 = load %struct.tty*, %struct.tty** %2, align 8
  %143 = call i32 @tty_puts(%struct.tty* %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %144

144:                                              ; preds = %141, %131
  %145 = load %struct.tty*, %struct.tty** %2, align 8
  %146 = getelementptr inbounds %struct.tty, %struct.tty* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @TTYC_XT, align 4
  %149 = call i64 @tty_term_flag(i32 %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %166

151:                                              ; preds = %144
  %152 = load i32, i32* @global_options, align 4
  %153 = call i64 @options_get_number(i32 %152, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %151
  %156 = load i32, i32* @TTY_FOCUS, align 4
  %157 = load %struct.tty*, %struct.tty** %2, align 8
  %158 = getelementptr inbounds %struct.tty, %struct.tty* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  %161 = load %struct.tty*, %struct.tty** %2, align 8
  %162 = call i32 @tty_puts(%struct.tty* %161, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %163

163:                                              ; preds = %155, %151
  %164 = load %struct.tty*, %struct.tty** %2, align 8
  %165 = call i32 @tty_puts(%struct.tty* %164, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %166

166:                                              ; preds = %163, %144
  %167 = load i32, i32* @TTY_STARTED, align 4
  %168 = load %struct.tty*, %struct.tty** %2, align 8
  %169 = getelementptr inbounds %struct.tty, %struct.tty* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 8
  %172 = load %struct.tty*, %struct.tty** %2, align 8
  %173 = call i32 @tty_invalidate(%struct.tty* %172)
  %174 = load %struct.tty*, %struct.tty** %2, align 8
  %175 = call i32 @tty_force_cursor_colour(%struct.tty* %174, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %176 = load %struct.tty*, %struct.tty** %2, align 8
  %177 = getelementptr inbounds %struct.tty, %struct.tty* %176, i32 0, i32 3
  store i64 0, i64* %177, align 8
  %178 = load %struct.tty*, %struct.tty** %2, align 8
  %179 = getelementptr inbounds %struct.tty, %struct.tty* %178, i32 0, i32 2
  store i32* null, i32** %179, align 8
  %180 = load %struct.tty*, %struct.tty** %2, align 8
  %181 = getelementptr inbounds %struct.tty, %struct.tty* %180, i32 0, i32 1
  store i32* null, i32** %181, align 8
  ret void
}

declare dso_local i64 @tcgetattr(i32, i32*) #1

declare dso_local i32 @setblocking(i32, i32) #1

declare dso_local i32 @event_add(i32*, i32*) #1

declare dso_local i32 @memcpy(%struct.termios*, i32*, i32) #1

declare dso_local i64 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @tcflush(i32, i32) #1

declare dso_local i32 @tty_putcode(%struct.tty*, i32) #1

declare dso_local i64 @tty_acs_needed(%struct.tty*) #1

declare dso_local i32 @log_debug(i8*, i32) #1

declare dso_local i64 @tty_term_has(i32, i32) #1

declare dso_local i32 @tty_puts(%struct.tty*, i8*) #1

declare dso_local i64 @tty_term_flag(i32, i32) #1

declare dso_local i64 @options_get_number(i32, i8*) #1

declare dso_local i32 @tty_invalidate(%struct.tty*) #1

declare dso_local i32 @tty_force_cursor_colour(%struct.tty*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
