; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_logs-show.c_show_journal.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_logs-show.c_show_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OUTPUT_WARN_CUTOFF = common dso_local global i32 0, align 4
@_OUTPUT_MODE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to seek to tail: %m\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to skip previous: %m\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to iterate through journal: %m\00", align 1
@ESTALE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to get journal time: %m\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to get boot id: %m\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Failed to get journal cutoff time: %m\00", align 1
@.str.6 = private unnamed_addr constant [100 x i8] c"Warning: Journal has been rotated since unit was started. Log output is incomplete or unavailable.\0A\00", align 1
@OUTPUT_FOLLOW = common dso_local global i32 0, align 4
@USEC_INFINITY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"Failed to wait for journal: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @show_journal(i32* %0, i32* %1, i32 %2, i32 %3, i64 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* @OUTPUT_WARN_CUTOFF, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %21, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = ptrtoint i32* %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* %12, align 4
  %32 = icmp sge i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @_OUTPUT_MODE_MAX, align 4
  %37 = icmp slt i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32, i32* %15, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %8
  store i32 1, i32* %20, align 4
  br label %61

43:                                               ; preds = %8
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @sd_journal_seek_tail(i32* %44)
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* %18, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %18, align 4
  %50 = call i32 @log_error_errno(i32 %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %50, i32* %9, align 4
  br label %176

51:                                               ; preds = %43
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @sd_journal_previous_skip(i32* %52, i32 %53)
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* %18, align 4
  %59 = call i32 @log_error_errno(i32 %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 %59, i32* %9, align 4
  br label %176

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %42
  br label %62

62:                                               ; preds = %174, %61
  br label %63

63:                                               ; preds = %119, %101, %89, %62
  %64 = load i32, i32* %20, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @sd_journal_next(i32* %67)
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %18, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* %18, align 4
  %73 = call i32 @log_error_errno(i32 %72, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 %73, i32* %9, align 4
  br label %176

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %63
  %76 = load i32, i32* %18, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %120

79:                                               ; preds = %75
  store i32 1, i32* %20, align 4
  %80 = load i64, i64* %14, align 8
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %79
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @sd_journal_get_monotonic_usec(i32* %83, i64* %22, i32* null)
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* @ESTALE, align 4
  %87 = sub nsw i32 0, %86
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %63

90:                                               ; preds = %82
  %91 = load i32, i32* %18, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* %18, align 4
  %95 = call i32 @log_error_errno(i32 %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i32 %95, i32* %9, align 4
  br label %176

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %22, align 8
  %99 = load i64, i64* %14, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %63

102:                                              ; preds = %97
  br label %103

103:                                              ; preds = %102, %79
  %104 = load i32, i32* %19, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %19, align 4
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @maybe_print_begin_newline(i32* %106, i32* %16)
  %108 = load i32*, i32** %10, align 8
  %109 = load i32*, i32** %11, align 8
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load i32*, i32** %17, align 8
  %114 = call i32 @show_journal_entry(i32* %108, i32* %109, i32 %110, i32 %111, i32 %112, i32* null, i32* null, i32* %113)
  store i32 %114, i32* %18, align 4
  %115 = load i32, i32* %18, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %103
  %118 = load i32, i32* %18, align 4
  store i32 %118, i32* %9, align 4
  br label %176

119:                                              ; preds = %103
  br label %63

120:                                              ; preds = %78
  %121 = load i32, i32* %21, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %159

123:                                              ; preds = %120
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* %15, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %127, label %159

127:                                              ; preds = %123
  %128 = load i64, i64* %14, align 8
  %129 = icmp sgt i64 %128, 0
  br i1 %129, label %130, label %159

130:                                              ; preds = %127
  store i64 0, i64* %24, align 8
  %131 = call i32 @sd_id128_get_boot(i32* %23)
  store i32 %131, i32* %18, align 4
  %132 = load i32, i32* %18, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32, i32* %18, align 4
  %136 = call i32 @log_error_errno(i32 %135, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i32 %136, i32* %9, align 4
  br label %176

137:                                              ; preds = %130
  %138 = load i32*, i32** %11, align 8
  %139 = load i32, i32* %23, align 4
  %140 = call i32 @sd_journal_get_cutoff_monotonic_usec(i32* %138, i32 %139, i64* %24, i32* null)
  store i32 %140, i32* %18, align 4
  %141 = load i32, i32* %18, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load i32, i32* %18, align 4
  %145 = call i32 @log_error_errno(i32 %144, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  store i32 %145, i32* %9, align 4
  br label %176

146:                                              ; preds = %137
  %147 = load i32, i32* %18, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %146
  %150 = load i64, i64* %14, align 8
  %151 = load i64, i64* %24, align 8
  %152 = icmp slt i64 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = load i32*, i32** %10, align 8
  %155 = call i32 @maybe_print_begin_newline(i32* %154, i32* %16)
  %156 = load i32*, i32** %10, align 8
  %157 = call i32 @fprintf(i32* %156, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.6, i64 0, i64 0))
  br label %158

158:                                              ; preds = %153, %149, %146
  store i32 0, i32* %21, align 4
  br label %159

159:                                              ; preds = %158, %127, %123, %120
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* @OUTPUT_FOLLOW, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %159
  br label %175

165:                                              ; preds = %159
  %166 = load i32*, i32** %11, align 8
  %167 = load i32, i32* @USEC_INFINITY, align 4
  %168 = call i32 @sd_journal_wait(i32* %166, i32 %167)
  store i32 %168, i32* %18, align 4
  %169 = load i32, i32* %18, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %165
  %172 = load i32, i32* %18, align 4
  %173 = call i32 @log_error_errno(i32 %172, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  store i32 %173, i32* %9, align 4
  br label %176

174:                                              ; preds = %165
  br label %62

175:                                              ; preds = %164
  store i32 0, i32* %9, align 4
  br label %176

176:                                              ; preds = %175, %171, %143, %134, %117, %93, %71, %57, %48
  %177 = load i32, i32* %9, align 4
  ret i32 %177
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sd_journal_seek_tail(i32*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @sd_journal_previous_skip(i32*, i32) #1

declare dso_local i32 @sd_journal_next(i32*) #1

declare dso_local i32 @sd_journal_get_monotonic_usec(i32*, i64*, i32*) #1

declare dso_local i32 @maybe_print_begin_newline(i32*, i32*) #1

declare dso_local i32 @show_journal_entry(i32*, i32*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @sd_id128_get_boot(i32*) #1

declare dso_local i32 @sd_journal_get_cutoff_monotonic_usec(i32*, i32, i64*, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @sd_journal_wait(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
