; ModuleID = '/home/carl/AnghaBench/tig/src/extr_diff.c_diff_trace_origin.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_diff.c_diff_trace_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i64, i32 }
%struct.line = type { i64 }
%struct.blame_header = type { i8*, i32 }
%struct.blame_commit = type { i8* }

@LINE_DIFF_HEADER = common dso_local global i32 0, align 4
@LINE_DIFF_CHUNK = common dso_local global i32 0, align 4
@LINE_DIFF_DEL = common dso_local global i64 0, align 8
@SIZEOF_REF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"The line to trace must be inside a diff chunk\00", align 1
@REQ_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"--- a/\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to read the file name\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to read the line number\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"This is the origin of the line\00", align 1
@LINE_DIFF_ADD = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"%s^\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Failed to read blame data\00", align 1
@REQ_VIEW_BLAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, %struct.line*)* @diff_trace_origin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_trace_origin(%struct.view* %0, %struct.line* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.view*, align 8
  %5 = alloca %struct.line*, align 8
  %6 = alloca %struct.line*, align 8
  %7 = alloca %struct.line*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.blame_header, align 8
  %15 = alloca %struct.blame_commit, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.view* %0, %struct.view** %4, align 8
  store %struct.line* %1, %struct.line** %5, align 8
  %18 = load %struct.view*, %struct.view** %4, align 8
  %19 = load %struct.line*, %struct.line** %5, align 8
  %20 = load i32, i32* @LINE_DIFF_HEADER, align 4
  %21 = call %struct.line* @find_prev_line_by_type(%struct.view* %18, %struct.line* %19, i32 %20)
  store %struct.line* %21, %struct.line** %6, align 8
  %22 = load %struct.view*, %struct.view** %4, align 8
  %23 = load %struct.line*, %struct.line** %5, align 8
  %24 = load i32, i32* @LINE_DIFF_CHUNK, align 4
  %25 = call %struct.line* @find_prev_line_by_type(%struct.view* %22, %struct.line* %23, i32 %24)
  store %struct.line* %25, %struct.line** %7, align 8
  %26 = load %struct.line*, %struct.line** %5, align 8
  %27 = getelementptr inbounds %struct.line, %struct.line* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LINE_DIFF_DEL, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 45, i32 43
  store i32 %32, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i8* null, i8** %11, align 8
  %33 = load i32, i32* @SIZEOF_REF, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %12, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %13, align 8
  %37 = load %struct.line*, %struct.line** %6, align 8
  %38 = icmp ne %struct.line* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %2
  %40 = load %struct.line*, %struct.line** %7, align 8
  %41 = icmp ne %struct.line* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.line*, %struct.line** %7, align 8
  %44 = load %struct.line*, %struct.line** %5, align 8
  %45 = icmp eq %struct.line* %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %39, %2
  %47 = call i32 @report(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @REQ_NONE, align 4
  store i32 %48, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %218

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %72, %49
  %51 = load %struct.line*, %struct.line** %6, align 8
  %52 = load %struct.line*, %struct.line** %5, align 8
  %53 = icmp ult %struct.line* %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i8*, i8** %11, align 8
  %56 = icmp ne i8* %55, null
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i1 [ false, %50 ], [ %57, %54 ]
  br i1 %59, label %60, label %75

60:                                               ; preds = %58
  %61 = load %struct.line*, %struct.line** %6, align 8
  %62 = call i8* @box_text(%struct.line* %61)
  store i8* %62, i8** %17, align 8
  %63 = load i8*, i8** %17, align 8
  %64 = call i32 @prefixcmp(i8* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = load i8*, i8** %17, align 8
  %68 = call i32 @STRING_SIZE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  store i8* %70, i8** %11, align 8
  br label %75

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.line*, %struct.line** %6, align 8
  %74 = getelementptr inbounds %struct.line, %struct.line* %73, i32 1
  store %struct.line* %74, %struct.line** %6, align 8
  br label %50

75:                                               ; preds = %66, %58
  %76 = load %struct.line*, %struct.line** %6, align 8
  %77 = load %struct.line*, %struct.line** %5, align 8
  %78 = icmp eq %struct.line* %76, %77
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = load i8*, i8** %11, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %79, %75
  %83 = call i32 @report(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* @REQ_NONE, align 4
  store i32 %84, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %218

85:                                               ; preds = %79
  %86 = load %struct.line*, %struct.line** %7, align 8
  %87 = call i8* @box_text(%struct.line* %86)
  store i8* %87, i8** %8, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @parse_chunk_lineno(i64* %10, i8* %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %85
  %93 = call i32 @report(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %94 = load i32, i32* @REQ_NONE, align 4
  store i32 %94, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %218

95:                                               ; preds = %85
  %96 = load i64, i64* %10, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = call i32 @report(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %100 = load i32, i32* @REQ_NONE, align 4
  store i32 %100, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %218

101:                                              ; preds = %95
  %102 = load %struct.line*, %struct.line** %7, align 8
  %103 = getelementptr inbounds %struct.line, %struct.line* %102, i64 1
  store %struct.line* %103, %struct.line** %7, align 8
  br label %104

104:                                              ; preds = %139, %101
  %105 = load %struct.line*, %struct.line** %7, align 8
  %106 = load %struct.line*, %struct.line** %5, align 8
  %107 = icmp ult %struct.line* %105, %106
  br i1 %107, label %108, label %142

108:                                              ; preds = %104
  %109 = load %struct.line*, %struct.line** %7, align 8
  %110 = getelementptr inbounds %struct.line, %struct.line* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @LINE_DIFF_ADD, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %108
  %115 = load i32, i32* %9, align 4
  %116 = icmp eq i32 %115, 43
  %117 = zext i1 %116 to i32
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %10, align 8
  %120 = add i64 %119, %118
  store i64 %120, i64* %10, align 8
  br label %138

121:                                              ; preds = %108
  %122 = load %struct.line*, %struct.line** %7, align 8
  %123 = getelementptr inbounds %struct.line, %struct.line* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @LINE_DIFF_DEL, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %121
  %128 = load i32, i32* %9, align 4
  %129 = icmp eq i32 %128, 45
  %130 = zext i1 %129 to i32
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* %10, align 8
  %133 = add i64 %132, %131
  store i64 %133, i64* %10, align 8
  br label %137

134:                                              ; preds = %121
  %135 = load i64, i64* %10, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %10, align 8
  br label %137

137:                                              ; preds = %134, %127
  br label %138

138:                                              ; preds = %137, %114
  br label %139

139:                                              ; preds = %138
  %140 = load %struct.line*, %struct.line** %7, align 8
  %141 = getelementptr inbounds %struct.line, %struct.line* %140, i32 1
  store %struct.line* %141, %struct.line** %7, align 8
  br label %104

142:                                              ; preds = %104
  %143 = load i32, i32* %9, align 4
  %144 = icmp eq i32 %143, 43
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load %struct.view*, %struct.view** %4, align 8
  %147 = getelementptr inbounds %struct.view, %struct.view* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @string_copy(i8* %36, i8* %148)
  br label %155

150:                                              ; preds = %142
  %151 = load %struct.view*, %struct.view** %4, align 8
  %152 = getelementptr inbounds %struct.view, %struct.view* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @string_format(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %153)
  br label %155

155:                                              ; preds = %150, %145
  %156 = call i64 @string_rev_is_null(i8* %36)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %180

158:                                              ; preds = %155
  %159 = load %struct.view*, %struct.view** %4, align 8
  %160 = getelementptr inbounds %struct.view, %struct.view* %159, i32 0, i32 1
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i8*, i8** %11, align 8
  %165 = load i8*, i8** %11, align 8
  %166 = call i32 @strlen(i8* %165)
  %167 = call i32 @string_ncopy(i32 %163, i8* %164, i32 %166)
  %168 = load %struct.view*, %struct.view** %4, align 8
  %169 = getelementptr inbounds %struct.view, %struct.view* %168, i32 0, i32 1
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @string_copy(i8* %172, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %174 = load i64, i64* %10, align 8
  %175 = sub i64 %174, 1
  %176 = load %struct.view*, %struct.view** %4, align 8
  %177 = getelementptr inbounds %struct.view, %struct.view* %176, i32 0, i32 1
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 1
  store i64 %175, i64* %179, align 8
  br label %216

180:                                              ; preds = %155
  %181 = load i8*, i8** %11, align 8
  %182 = load i64, i64* %10, align 8
  %183 = call i32 @diff_blame_line(i8* %36, i8* %181, i64 %182, %struct.blame_header* %14, %struct.blame_commit* %15)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %180
  %186 = call i32 @report(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %187 = load i32, i32* @REQ_NONE, align 4
  store i32 %187, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %218

188:                                              ; preds = %180
  %189 = load %struct.view*, %struct.view** %4, align 8
  %190 = getelementptr inbounds %struct.view, %struct.view* %189, i32 0, i32 1
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = getelementptr inbounds %struct.blame_commit, %struct.blame_commit* %15, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = getelementptr inbounds %struct.blame_commit, %struct.blame_commit* %15, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @strlen(i8* %197)
  %199 = call i32 @string_ncopy(i32 %193, i8* %195, i32 %198)
  %200 = load %struct.view*, %struct.view** %4, align 8
  %201 = getelementptr inbounds %struct.view, %struct.view* %200, i32 0, i32 1
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = getelementptr inbounds %struct.blame_header, %struct.blame_header* %14, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 @string_copy(i8* %204, i8* %206)
  %208 = getelementptr inbounds %struct.blame_header, %struct.blame_header* %14, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = sub nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = load %struct.view*, %struct.view** %4, align 8
  %213 = getelementptr inbounds %struct.view, %struct.view* %212, i32 0, i32 1
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 1
  store i64 %211, i64* %215, align 8
  br label %216

216:                                              ; preds = %188, %158
  %217 = load i32, i32* @REQ_VIEW_BLAME, align 4
  store i32 %217, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %218

218:                                              ; preds = %216, %185, %98, %92, %82, %46
  %219 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %219)
  %220 = load i32, i32* %3, align 4
  ret i32 %220
}

declare dso_local %struct.line* @find_prev_line_by_type(%struct.view*, %struct.line*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @report(i8*) #1

declare dso_local i8* @box_text(%struct.line*) #1

declare dso_local i32 @prefixcmp(i8*, i8*) #1

declare dso_local i32 @STRING_SIZE(i8*) #1

declare dso_local i32 @parse_chunk_lineno(i64*, i8*, i32) #1

declare dso_local i32 @string_copy(i8*, i8*) #1

declare dso_local i32 @string_format(i8*, i8*, i8*) #1

declare dso_local i64 @string_rev_is_null(i8*) #1

declare dso_local i32 @string_ncopy(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @diff_blame_line(i8*, i8*, i64, %struct.blame_header*, %struct.blame_commit*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
