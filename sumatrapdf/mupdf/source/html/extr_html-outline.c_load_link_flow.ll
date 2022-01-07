; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-outline.c_load_link_flow.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-outline.c_load_link_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { float, float, float, i64, i64, %struct.TYPE_11__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_10__* }
%struct.TYPE_9__ = type { float, i32, float, i64 }

@FLOW_IMAGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i32*, %struct.TYPE_11__*, %struct.TYPE_10__*, i32, float, i8*, i8*)* @load_link_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @load_link_flow(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_10__* %2, i32 %3, float %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca [2048 x i8], align 16
  %18 = alloca %struct.TYPE_9__, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca float, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %10, align 8
  store i32 %3, i32* %11, align 4
  store float %4, float* %12, align 4
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  br label %22

22:                                               ; preds = %184, %7
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %24 = icmp ne %struct.TYPE_11__* %23, null
  br i1 %24, label %25, label %186

25:                                               ; preds = %22
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @box_href(i32 %28)
  store i8* %29, i8** %20, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 5
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %16, align 8
  %33 = load i8*, i8** %20, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %184

35:                                               ; preds = %25
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load float, float* %37, align 8
  %39 = load float, float* %12, align 4
  %40 = fdiv float %38, %39
  %41 = fptosi float %40 to i32
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %184

44:                                               ; preds = %35
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load float, float* %46, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = load float, float* %49, align 8
  %51 = fadd float %47, %50
  store float %51, float* %21, align 4
  br label %52

52:                                               ; preds = %80, %44
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %54 = icmp ne %struct.TYPE_11__* %53, null
  br i1 %54, label %55, label %78

55:                                               ; preds = %52
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load float, float* %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load float, float* %60, align 8
  %62 = fcmp oeq float %58, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %55
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %63
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = load i8*, i8** %20, align 8
  %76 = call i64 @has_same_href(i32 %74, i8* %75)
  %77 = icmp ne i64 %76, 0
  br label %78

78:                                               ; preds = %71, %63, %55, %52
  %79 = phi i1 [ false, %63 ], [ false, %55 ], [ false, %52 ], [ %77, %71 ]
  br i1 %79, label %80, label %91

80:                                               ; preds = %78
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load float, float* %82, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  %86 = load float, float* %85, align 8
  %87 = fadd float %83, %86
  store float %87, float* %21, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 5
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  store %struct.TYPE_11__* %90, %struct.TYPE_11__** %16, align 8
  br label %52

91:                                               ; preds = %78
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load float, float* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store float %94, float* %95, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load float, float* %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sitofp i32 %99 to float
  %101 = load float, float* %12, align 4
  %102 = fmul float %100, %101
  %103 = fsub float %98, %102
  %104 = fptosi float %103 to i32
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  store i32 %104, i32* %105, align 4
  %106 = load float, float* %21, align 4
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  store float %106, float* %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %110, %113
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  store i64 %114, i64* %115, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @FLOW_IMAGE, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %142

121:                                              ; preds = %91
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = sitofp i64 %124 to float
  %126 = fmul float 0x3FE99999A0000000, %125
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = sitofp i32 %128 to float
  %130 = fsub float %129, %126
  %131 = fptosi float %130 to i32
  store i32 %131, i32* %127, align 4
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = sitofp i64 %134 to float
  %136 = fmul float 0x3FE99999A0000000, %135
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = sitofp i64 %138 to float
  %140 = fsub float %139, %136
  %141 = fptosi float %140 to i64
  store i64 %141, i64* %137, align 8
  br label %142

142:                                              ; preds = %121, %91
  %143 = load i8*, i8** %20, align 8
  %144 = call i64 @is_internal_uri(i8* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %174

146:                                              ; preds = %142
  %147 = load i8*, i8** %20, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 35
  br i1 %151, label %152, label %159

152:                                              ; preds = %146
  %153 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %154 = load i8*, i8** %14, align 8
  %155 = call i32 @fz_strlcpy(i8* %153, i8* %154, i32 2048)
  %156 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %157 = load i8*, i8** %20, align 8
  %158 = call i32 @fz_strlcat(i8* %156, i8* %157, i32 2048)
  br label %168

159:                                              ; preds = %146
  %160 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %161 = load i8*, i8** %13, align 8
  %162 = call i32 @fz_strlcpy(i8* %160, i8* %161, i32 2048)
  %163 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %164 = call i32 @fz_strlcat(i8* %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 2048)
  %165 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %166 = load i8*, i8** %20, align 8
  %167 = call i32 @fz_strlcat(i8* %165, i8* %166, i32 2048)
  br label %168

168:                                              ; preds = %159, %152
  %169 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %170 = call i32 @fz_urldecode(i8* %169)
  %171 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %172 = call i32 @fz_cleanname(i8* %171)
  %173 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  store i8* %173, i8** %19, align 8
  br label %176

174:                                              ; preds = %142
  %175 = load i8*, i8** %20, align 8
  store i8* %175, i8** %19, align 8
  br label %176

176:                                              ; preds = %174, %168
  %177 = load i32*, i32** %8, align 8
  %178 = load i8*, i8** %19, align 8
  %179 = call %struct.TYPE_10__* @fz_new_link(i32* %177, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %18, i32* null, i8* %178)
  store %struct.TYPE_10__* %179, %struct.TYPE_10__** %15, align 8
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  store %struct.TYPE_10__* %180, %struct.TYPE_10__** %182, align 8
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %183, %struct.TYPE_10__** %10, align 8
  br label %184

184:                                              ; preds = %176, %35, %25
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %185, %struct.TYPE_11__** %9, align 8
  br label %22

186:                                              ; preds = %22
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  ret %struct.TYPE_10__* %187
}

declare dso_local i8* @box_href(i32) #1

declare dso_local i64 @has_same_href(i32, i8*) #1

declare dso_local i64 @is_internal_uri(i8*) #1

declare dso_local i32 @fz_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @fz_strlcat(i8*, i8*, i32) #1

declare dso_local i32 @fz_urldecode(i8*) #1

declare dso_local i32 @fz_cleanname(i8*) #1

declare dso_local %struct.TYPE_10__* @fz_new_link(i32*, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
