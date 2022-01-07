; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_try_colour.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_try_colour.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@COLOUR_FLAG_256 = common dso_local global i32 0, align 4
@TERM_256COLOURS = common dso_local global i32 0, align 4
@TTYC_RGB = common dso_local global i32 0, align 4
@TTYC_SETAF = common dso_local global i32 0, align 4
@TTYC_SETAB = common dso_local global i32 0, align 4
@COLOUR_FLAG_RGB = common dso_local global i32 0, align 4
@TTYC_SETRGBF = common dso_local global i32 0, align 4
@TTYC_SETRGBB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"\1B[%s;5;%dm\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: 256 colour fallback: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, i32, i8*)* @tty_try_colour to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_try_colour(%struct.tty* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [32 x i8], align 16
  store %struct.tty* %0, %struct.tty** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @COLOUR_FLAG_256, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %75

16:                                               ; preds = %3
  %17 = load %struct.tty*, %struct.tty** %5, align 8
  %18 = getelementptr inbounds %struct.tty, %struct.tty* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @TERM_256COLOURS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load %struct.tty*, %struct.tty** %5, align 8
  %25 = getelementptr inbounds %struct.tty, %struct.tty* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* @TTYC_RGB, align 4
  %28 = call i64 @tty_term_has(%struct.TYPE_4__* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %16
  br label %123

31:                                               ; preds = %23
  %32 = load %struct.tty*, %struct.tty** %5, align 8
  %33 = getelementptr inbounds %struct.tty, %struct.tty* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @TERM_256COLOURS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %74

40:                                               ; preds = %31
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 51
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load %struct.tty*, %struct.tty** %5, align 8
  %47 = getelementptr inbounds %struct.tty, %struct.tty* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* @TTYC_SETAF, align 4
  %50 = call i64 @tty_term_has(%struct.TYPE_4__* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %123

53:                                               ; preds = %45
  %54 = load %struct.tty*, %struct.tty** %5, align 8
  %55 = load i32, i32* @TTYC_SETAF, align 4
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, 255
  %58 = call i32 @tty_putcode1(%struct.tty* %54, i32 %55, i32 %57)
  br label %73

59:                                               ; preds = %40
  %60 = load %struct.tty*, %struct.tty** %5, align 8
  %61 = getelementptr inbounds %struct.tty, %struct.tty* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* @TTYC_SETAB, align 4
  %64 = call i64 @tty_term_has(%struct.TYPE_4__* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  br label %123

67:                                               ; preds = %59
  %68 = load %struct.tty*, %struct.tty** %5, align 8
  %69 = load i32, i32* @TTYC_SETAB, align 4
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, 255
  %72 = call i32 @tty_putcode1(%struct.tty* %68, i32 %69, i32 %71)
  br label %73

73:                                               ; preds = %67, %53
  store i32 0, i32* %4, align 4
  br label %139

74:                                               ; preds = %31
  br label %123

75:                                               ; preds = %3
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @COLOUR_FLAG_RGB, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %122

80:                                               ; preds = %75
  %81 = load i8*, i8** %7, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 51
  br i1 %84, label %85, label %103

85:                                               ; preds = %80
  %86 = load %struct.tty*, %struct.tty** %5, align 8
  %87 = getelementptr inbounds %struct.tty, %struct.tty* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* @TTYC_SETRGBF, align 4
  %90 = call i64 @tty_term_has(%struct.TYPE_4__* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %85
  store i32 -1, i32* %4, align 4
  br label %139

93:                                               ; preds = %85
  %94 = load i32, i32* %6, align 4
  %95 = and i32 %94, 16777215
  %96 = call i32 @colour_split_rgb(i32 %95, i32* %8, i32* %9, i32* %10)
  %97 = load %struct.tty*, %struct.tty** %5, align 8
  %98 = load i32, i32* @TTYC_SETRGBF, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @tty_putcode3(%struct.tty* %97, i32 %98, i32 %99, i32 %100, i32 %101)
  br label %121

103:                                              ; preds = %80
  %104 = load %struct.tty*, %struct.tty** %5, align 8
  %105 = getelementptr inbounds %struct.tty, %struct.tty* %104, i32 0, i32 2
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* @TTYC_SETRGBB, align 4
  %108 = call i64 @tty_term_has(%struct.TYPE_4__* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %103
  store i32 -1, i32* %4, align 4
  br label %139

111:                                              ; preds = %103
  %112 = load i32, i32* %6, align 4
  %113 = and i32 %112, 16777215
  %114 = call i32 @colour_split_rgb(i32 %113, i32* %8, i32* %9, i32* %10)
  %115 = load %struct.tty*, %struct.tty** %5, align 8
  %116 = load i32, i32* @TTYC_SETRGBB, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @tty_putcode3(%struct.tty* %115, i32 %116, i32 %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %111, %93
  store i32 0, i32* %4, align 4
  br label %139

122:                                              ; preds = %75
  store i32 -1, i32* %4, align 4
  br label %139

123:                                              ; preds = %74, %66, %52, %30
  %124 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %125 = load i8*, i8** %7, align 8
  %126 = load i32, i32* %6, align 4
  %127 = and i32 %126, 255
  %128 = call i32 @xsnprintf(i8* %124, i32 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %125, i32 %127)
  %129 = load %struct.tty*, %struct.tty** %5, align 8
  %130 = getelementptr inbounds %struct.tty, %struct.tty* %129, i32 0, i32 1
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %135 = call i32 @log_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %133, i8* %134)
  %136 = load %struct.tty*, %struct.tty** %5, align 8
  %137 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %138 = call i32 @tty_puts(%struct.tty* %136, i8* %137)
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %123, %122, %121, %110, %92, %73
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i64 @tty_term_has(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @tty_putcode1(%struct.tty*, i32, i32) #1

declare dso_local i32 @colour_split_rgb(i32, i32*, i32*, i32*) #1

declare dso_local i32 @tty_putcode3(%struct.tty*, i32, i32, i32, i32) #1

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @log_debug(i8*, i32, i8*) #1

declare dso_local i32 @tty_puts(%struct.tty*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
