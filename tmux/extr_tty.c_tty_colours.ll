; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_colours.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_colours.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, %struct.grid_cell }
%struct.grid_cell = type { i64, i64, i64 }

@TTYC_AX = common dso_local global i32 0, align 4
@TTYC_OP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"\1B[39m\00", align 1
@TTYC_SETAF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"\1B[49m\00", align 1
@TTYC_SETAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*, %struct.grid_cell*)* @tty_colours to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_colours(%struct.tty* %0, %struct.grid_cell* %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.grid_cell*, align 8
  %5 = alloca %struct.grid_cell*, align 8
  %6 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %3, align 8
  store %struct.grid_cell* %1, %struct.grid_cell** %4, align 8
  %7 = load %struct.tty*, %struct.tty** %3, align 8
  %8 = getelementptr inbounds %struct.tty, %struct.tty* %7, i32 0, i32 1
  store %struct.grid_cell* %8, %struct.grid_cell** %5, align 8
  %9 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %10 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %13 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  %17 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %18 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %21 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %16
  %25 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %26 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %29 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %181

33:                                               ; preds = %24, %16, %2
  %34 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %35 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @COLOUR_DEFAULT(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %41 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @COLOUR_DEFAULT(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %133

45:                                               ; preds = %39, %33
  %46 = load %struct.tty*, %struct.tty** %3, align 8
  %47 = getelementptr inbounds %struct.tty, %struct.tty* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @TTYC_AX, align 4
  %50 = call i32 @tty_term_flag(i32 %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %45
  %54 = load %struct.tty*, %struct.tty** %3, align 8
  %55 = getelementptr inbounds %struct.tty, %struct.tty* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @TTYC_OP, align 4
  %58 = call i64 @tty_term_has(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.tty*, %struct.tty** %3, align 8
  %62 = call i32 @tty_reset(%struct.tty* %61)
  br label %132

63:                                               ; preds = %53, %45
  %64 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %65 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @COLOUR_DEFAULT(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %97

69:                                               ; preds = %63
  %70 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %71 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @COLOUR_DEFAULT(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %97, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.tty*, %struct.tty** %3, align 8
  %80 = call i32 @tty_puts(%struct.tty* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %91

81:                                               ; preds = %75
  %82 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %83 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 7
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load %struct.tty*, %struct.tty** %3, align 8
  %88 = load i32, i32* @TTYC_SETAF, align 4
  %89 = call i32 @tty_putcode1(%struct.tty* %87, i32 %88, i32 7)
  br label %90

90:                                               ; preds = %86, %81
  br label %91

91:                                               ; preds = %90, %78
  %92 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %93 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %96 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %91, %69, %63
  %98 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %99 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @COLOUR_DEFAULT(i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %131

103:                                              ; preds = %97
  %104 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %105 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @COLOUR_DEFAULT(i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %131, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load %struct.tty*, %struct.tty** %3, align 8
  %114 = call i32 @tty_puts(%struct.tty* %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %125

115:                                              ; preds = %109
  %116 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %117 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load %struct.tty*, %struct.tty** %3, align 8
  %122 = load i32, i32* @TTYC_SETAB, align 4
  %123 = call i32 @tty_putcode1(%struct.tty* %121, i32 %122, i32 0)
  br label %124

124:                                              ; preds = %120, %115
  br label %125

125:                                              ; preds = %124, %112
  %126 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %127 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %130 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %129, i32 0, i32 1
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %125, %103, %97
  br label %132

132:                                              ; preds = %131, %60
  br label %133

133:                                              ; preds = %132, %39
  %134 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %135 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @COLOUR_DEFAULT(i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %151, label %139

139:                                              ; preds = %133
  %140 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %141 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %144 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %142, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %139
  %148 = load %struct.tty*, %struct.tty** %3, align 8
  %149 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %150 = call i32 @tty_colours_fg(%struct.tty* %148, %struct.grid_cell* %149)
  br label %151

151:                                              ; preds = %147, %139, %133
  %152 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %153 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = call i64 @COLOUR_DEFAULT(i64 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %169, label %157

157:                                              ; preds = %151
  %158 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %159 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %162 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %160, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %157
  %166 = load %struct.tty*, %struct.tty** %3, align 8
  %167 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %168 = call i32 @tty_colours_bg(%struct.tty* %166, %struct.grid_cell* %167)
  br label %169

169:                                              ; preds = %165, %157, %151
  %170 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %171 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %174 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %172, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %169
  %178 = load %struct.tty*, %struct.tty** %3, align 8
  %179 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %180 = call i32 @tty_colours_us(%struct.tty* %178, %struct.grid_cell* %179)
  br label %181

181:                                              ; preds = %32, %177, %169
  ret void
}

declare dso_local i64 @COLOUR_DEFAULT(i64) #1

declare dso_local i32 @tty_term_flag(i32, i32) #1

declare dso_local i64 @tty_term_has(i32, i32) #1

declare dso_local i32 @tty_reset(%struct.tty*) #1

declare dso_local i32 @tty_puts(%struct.tty*, i8*) #1

declare dso_local i32 @tty_putcode1(%struct.tty*, i32, i32) #1

declare dso_local i32 @tty_colours_fg(%struct.tty*, %struct.grid_cell*) #1

declare dso_local i32 @tty_colours_bg(%struct.tty*, %struct.grid_cell*) #1

declare dso_local i32 @tty_colours_us(%struct.tty*, %struct.grid_cell*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
