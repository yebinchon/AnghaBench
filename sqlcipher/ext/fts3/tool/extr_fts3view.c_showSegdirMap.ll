; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/tool/extr_fts3view.c_showSegdirMap.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/tool/extr_fts3view.c_showSegdirMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"SELECT max(level/1024) FROM '%q_segdir'\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Number of inverted indices............... %3d\0A\00", align 1
@.str.2 = private unnamed_addr constant [130 x i8] c"SELECT level, idx, start_block, leaves_end_block, end_block, rowid  FROM '%q_segdir' WHERE level/1024==? ORDER BY level DESC, idx\00", align 1
@.str.3 = private unnamed_addr constant [81 x i8] c"SELECT blockid FROM '%q_segments' WHERE blockid BETWEEN ? AND ? ORDER BY blockid\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"**************************** Index %d ****************************\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"level %2d idx %2d\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"         idx %2d\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"r%lld\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"  root   %9s\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"                 null   %9lld\0A\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"                 leaves %9lld thru %9lld  (%lld blocks)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @showSegdirMap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showSegdirMap(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [20 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32* @prepare(i32* %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @sqlite3_step(i32* %22)
  %24 = load i64, i64* @SQLITE_ROW, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @sqlite3_column_int(i32* %27, i32 0)
  store i32 %28, i32* %5, align 4
  br label %30

29:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @sqlite3_finalize(i32* %31)
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32* @prepare(i32* %36, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i32* @prepare(i32* %39, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i8* %40)
  store i32* %41, i32** %8, align 8
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %173, %30
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %176

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @sqlite3_bind_int(i32* %53, i32 1, i32 %54)
  store i32 -1, i32* %9, align 4
  br label %56

56:                                               ; preds = %169, %52
  %57 = load i32*, i32** %7, align 8
  %58 = call i64 @sqlite3_step(i32* %57)
  %59 = load i64, i64* @SQLITE_ROW, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %170

61:                                               ; preds = %56
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @sqlite3_column_int(i32* %62, i32 0)
  %64 = srem i32 %63, 1024
  store i32 %64, i32* %10, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @sqlite3_column_int(i32* %65, i32 1)
  store i32 %66, i32* %11, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @sqlite3_column_int64(i32* %67, i32 2)
  store i32 %68, i32* %12, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @sqlite3_column_int64(i32* %69, i32 3)
  store i32 %70, i32* %13, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @sqlite3_column_int64(i32* %71, i32 4)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %61
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %9, align 4
  br label %84

81:                                               ; preds = %61
  %82 = load i32, i32* %11, align 4
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %81, %76
  %85 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @sqlite3_column_int64(i32* %86, i32 5)
  %88 = call i32 @sqlite3_snprintf(i32 20, i8* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %87)
  %89 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %89)
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %169

94:                                               ; preds = %84
  store i32 0, i32* %17, align 4
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  %97 = load i32, i32* %14, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %161

99:                                               ; preds = %94
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  %103 = call i32 @sqlite3_bind_int64(i32* %100, i32 1, i32 %102)
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @sqlite3_bind_int64(i32* %104, i32 2, i32 %105)
  store i32 -1, i32* %16, align 4
  br label %107

107:                                              ; preds = %132, %99
  %108 = load i32*, i32** %8, align 8
  %109 = call i64 @sqlite3_step(i32* %108)
  %110 = load i64, i64* @SQLITE_ROW, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %133

112:                                              ; preds = %107
  %113 = load i32*, i32** %8, align 8
  %114 = call i32 @sqlite3_column_int64(i32* %113, i32 0)
  store i32 %114, i32* %18, align 4
  %115 = load i32, i32* %16, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i32, i32* %18, align 4
  store i32 %118, i32* %17, align 4
  store i32 %118, i32* %16, align 4
  br label %132

119:                                              ; preds = %112
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* %17, align 4
  %122 = add nsw i32 %121, 1
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i32, i32* %18, align 4
  store i32 %125, i32* %17, align 4
  br label %131

126:                                              ; preds = %119
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %17, align 4
  %129 = call i32 @printTreeLine(i32 %127, i32 %128)
  %130 = load i32, i32* %18, align 4
  store i32 %130, i32* %17, align 4
  store i32 %130, i32* %16, align 4
  br label %131

131:                                              ; preds = %126, %124
  br label %132

132:                                              ; preds = %131, %117
  br label %107

133:                                              ; preds = %107
  %134 = load i32*, i32** %8, align 8
  %135 = call i32 @sqlite3_reset(i32* %134)
  %136 = load i32, i32* %16, align 4
  %137 = icmp sge i32 %136, 0
  br i1 %137, label %138, label %160

138:                                              ; preds = %133
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* %17, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %155

142:                                              ; preds = %138
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %14, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %155

146:                                              ; preds = %142
  %147 = load i32*, i32** %3, align 8
  %148 = load i8*, i8** %4, align 8
  %149 = load i32, i32* %16, align 4
  %150 = call i64 @isNullSegment(i32* %147, i8* %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = load i32, i32* %16, align 4
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %153)
  br label %159

155:                                              ; preds = %146, %142, %138
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* %17, align 4
  %158 = call i32 @printTreeLine(i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %155, %152
  br label %160

160:                                              ; preds = %159, %133
  br label %161

161:                                              ; preds = %160, %94
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %12, align 4
  %166 = sub nsw i32 %164, %165
  %167 = add nsw i32 %166, 1
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0), i32 %162, i32 %163, i32 %167)
  br label %169

169:                                              ; preds = %161, %84
  br label %56

170:                                              ; preds = %56
  %171 = load i32*, i32** %7, align 8
  %172 = call i32 @sqlite3_reset(i32* %171)
  br label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %6, align 4
  br label %42

176:                                              ; preds = %42
  %177 = load i32*, i32** %7, align 8
  %178 = call i32 @sqlite3_finalize(i32* %177)
  %179 = load i32*, i32** %8, align 8
  %180 = call i32 @sqlite3_finalize(i32* %179)
  ret void
}

declare dso_local i32* @prepare(i32*, i8*, i8*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sqlite3_bind_int(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_column_int64(i32*, i32) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_bind_int64(i32*, i32, i32) #1

declare dso_local i32 @printTreeLine(i32, i32) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i64 @isNullSegment(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
