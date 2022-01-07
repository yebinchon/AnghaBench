; ModuleID = '/home/carl/AnghaBench/tig/src/extr_stage.c_stage_split_chunk.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_stage.c_stage_split_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.line* }
%struct.line = type { i32 }
%struct.chunk_header = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to parse chunk header\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Split the chunk in %d\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"The chunk cannot be split\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.view*, %struct.line*)* @stage_split_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stage_split_chunk(%struct.view* %0, %struct.line* %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca %struct.line*, align 8
  %5 = alloca %struct.chunk_header, align 8
  %6 = alloca %struct.line*, align 8
  %7 = alloca %struct.line*, align 8
  %8 = alloca %struct.line*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.view* %0, %struct.view** %3, align 8
  store %struct.line* %1, %struct.line** %4, align 8
  store %struct.line* null, %struct.line** %6, align 8
  store %struct.line* null, %struct.line** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.line*, %struct.line** %4, align 8
  %14 = icmp ne %struct.line* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.line*, %struct.line** %4, align 8
  %17 = call i8* @box_text(%struct.line* %16)
  %18 = call i32 @parse_chunk_header(%struct.chunk_header* %5, i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15, %2
  %21 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %169

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.chunk_header, %struct.chunk_header* %5, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.chunk_header, %struct.chunk_header* %5, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.line*, %struct.line** %4, align 8
  %28 = getelementptr inbounds %struct.line, %struct.line* %27, i64 1
  store %struct.line* %28, %struct.line** %8, align 8
  br label %29

29:                                               ; preds = %152, %22
  %30 = load %struct.view*, %struct.view** %3, align 8
  %31 = load %struct.line*, %struct.line** %8, align 8
  %32 = call i64 @view_has_line(%struct.view* %30, %struct.line* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %155

34:                                               ; preds = %29
  %35 = load %struct.line*, %struct.line** %8, align 8
  %36 = call i8* @box_text(%struct.line* %35)
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 64
  br i1 %40, label %46, label %41

41:                                               ; preds = %34
  %42 = load i8*, i8** %10, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 92
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %34
  br label %155

47:                                               ; preds = %41
  %48 = load i8*, i8** %10, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 32
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.chunk_header, %struct.chunk_header* %5, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %54, align 8
  %57 = getelementptr inbounds %struct.chunk_header, %struct.chunk_header* %5, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %58, align 8
  %61 = load %struct.line*, %struct.line** %7, align 8
  %62 = load %struct.line*, %struct.line** %6, align 8
  %63 = icmp ult %struct.line* %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = load %struct.line*, %struct.line** %8, align 8
  store %struct.line* %65, %struct.line** %7, align 8
  br label %66

66:                                               ; preds = %64, %52
  br label %152

67:                                               ; preds = %47
  %68 = load %struct.line*, %struct.line** %6, align 8
  %69 = icmp ne %struct.line* %68, null
  br i1 %69, label %70, label %128

70:                                               ; preds = %67
  %71 = load %struct.line*, %struct.line** %6, align 8
  %72 = load %struct.line*, %struct.line** %7, align 8
  %73 = icmp ult %struct.line* %71, %72
  br i1 %73, label %74, label %128

74:                                               ; preds = %70
  %75 = load %struct.line*, %struct.line** %8, align 8
  %76 = load %struct.view*, %struct.view** %3, align 8
  %77 = getelementptr inbounds %struct.view, %struct.view* %76, i32 0, i32 0
  %78 = load %struct.line*, %struct.line** %77, align 8
  %79 = ptrtoint %struct.line* %75 to i64
  %80 = ptrtoint %struct.line* %78 to i64
  %81 = sub i64 %79, %80
  %82 = sdiv exact i64 %81, 4
  store i64 %82, i64* %11, align 8
  %83 = load %struct.line*, %struct.line** %8, align 8
  %84 = load %struct.line*, %struct.line** %7, align 8
  %85 = ptrtoint %struct.line* %83 to i64
  %86 = ptrtoint %struct.line* %84 to i64
  %87 = sub i64 %85, %86
  %88 = sdiv exact i64 %87, 4
  store i64 %88, i64* %12, align 8
  %89 = load %struct.view*, %struct.view** %3, align 8
  %90 = load %struct.line*, %struct.line** %4, align 8
  %91 = load %struct.line*, %struct.line** %8, align 8
  %92 = load %struct.line*, %struct.line** %7, align 8
  %93 = call %struct.line* @stage_insert_chunk(%struct.view* %89, %struct.chunk_header* %5, %struct.line* %90, %struct.line* %91, %struct.line* %92)
  store %struct.line* %93, %struct.line** %8, align 8
  %94 = getelementptr inbounds %struct.chunk_header, %struct.chunk_header* %5, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %12, align 8
  %98 = sub i64 %96, %97
  %99 = getelementptr inbounds %struct.chunk_header, %struct.chunk_header* %5, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = add i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 8
  %105 = getelementptr inbounds %struct.chunk_header, %struct.chunk_header* %5, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %12, align 8
  %109 = sub i64 %107, %108
  %110 = getelementptr inbounds %struct.chunk_header, %struct.chunk_header* %5, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = add i64 %113, %109
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %111, align 8
  %116 = load i64, i64* %12, align 8
  %117 = getelementptr inbounds %struct.chunk_header, %struct.chunk_header* %5, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = getelementptr inbounds %struct.chunk_header, %struct.chunk_header* %5, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  store i64 %116, i64* %120, align 8
  %121 = load %struct.view*, %struct.view** %3, align 8
  %122 = getelementptr inbounds %struct.view, %struct.view* %121, i32 0, i32 0
  %123 = load %struct.line*, %struct.line** %122, align 8
  %124 = load i64, i64* %11, align 8
  %125 = getelementptr inbounds %struct.line, %struct.line* %123, i64 %124
  store %struct.line* %125, %struct.line** %4, align 8
  store %struct.line* null, %struct.line** %7, align 8
  store %struct.line* null, %struct.line** %6, align 8
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %74, %70, %67
  %129 = load i8*, i8** %10, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 45
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.chunk_header, %struct.chunk_header* %5, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %135, align 8
  %138 = load %struct.line*, %struct.line** %8, align 8
  store %struct.line* %138, %struct.line** %6, align 8
  br label %151

139:                                              ; preds = %128
  %140 = load i8*, i8** %10, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 43
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.chunk_header, %struct.chunk_header* %5, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %146, align 8
  %149 = load %struct.line*, %struct.line** %8, align 8
  store %struct.line* %149, %struct.line** %6, align 8
  br label %150

150:                                              ; preds = %144, %139
  br label %151

151:                                              ; preds = %150, %133
  br label %152

152:                                              ; preds = %151, %66
  %153 = load %struct.line*, %struct.line** %8, align 8
  %154 = getelementptr inbounds %struct.line, %struct.line* %153, i32 1
  store %struct.line* %154, %struct.line** %8, align 8
  br label %29

155:                                              ; preds = %46, %29
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %155
  %159 = load %struct.view*, %struct.view** %3, align 8
  %160 = load %struct.line*, %struct.line** %4, align 8
  %161 = call %struct.line* @stage_insert_chunk(%struct.view* %159, %struct.chunk_header* %5, %struct.line* %160, %struct.line* null, %struct.line* null)
  %162 = load %struct.view*, %struct.view** %3, align 8
  %163 = call i32 @redraw_view(%struct.view* %162)
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 1
  %166 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %165)
  br label %169

167:                                              ; preds = %155
  %168 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %169

169:                                              ; preds = %20, %167, %158
  ret void
}

declare dso_local i32 @parse_chunk_header(%struct.chunk_header*, i8*) #1

declare dso_local i8* @box_text(%struct.line*) #1

declare dso_local i32 @report(i8*, ...) #1

declare dso_local i64 @view_has_line(%struct.view*, %struct.line*) #1

declare dso_local %struct.line* @stage_insert_chunk(%struct.view*, %struct.chunk_header*, %struct.line*, %struct.line*, %struct.line*) #1

declare dso_local i32 @redraw_view(%struct.view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
