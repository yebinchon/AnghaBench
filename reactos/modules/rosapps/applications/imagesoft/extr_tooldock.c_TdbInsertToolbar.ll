; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/imagesoft/extr_tooldock.c_TdbInsertToolbar.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/imagesoft/extr_tooldock.c_TdbInsertToolbar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32* }
%struct.TYPE_22__ = type { i64, i32, %struct.TYPE_23__, i32*, i32, %struct.TYPE_18__* }
%struct.TYPE_23__ = type { i64, i32, i32 }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_20__*, %struct.TYPE_23__*, i32, i32*, %struct.TYPE_19__*)*, i32 (%struct.TYPE_20__*, %struct.TYPE_23__*, i32, i32, i32, %struct.TYPE_19__*)* }
%struct.TYPE_19__ = type { i32, i32, i32*, i32*, i64, i32, i32, i32 }
%struct.TYPE_21__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@RBBIM_ID = common dso_local global i32 0, align 4
@RBBIM_STYLE = common dso_local global i32 0, align 4
@RBBIM_LPARAM = common dso_local global i32 0, align 4
@RBBS_GRIPPERALWAYS = common dso_local global i32 0, align 4
@hInstance = common dso_local global i32 0, align 4
@RBBIM_TEXT = common dso_local global i32 0, align 4
@RBBIM_CHILD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@RB_INSERTBAND = common dso_local global i32 0, align 4
@RB_IDTOINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_22__*, i64)* @TdbInsertToolbar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TdbInsertToolbar(%struct.TYPE_20__* %0, %struct.TYPE_22__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_19__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32* null, i32** %7, align 8
  %13 = bitcast %struct.TYPE_19__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 48, i1 false)
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %9, align 4
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  store i32 48, i32* %15, align 8
  %16 = load i32, i32* @RBBIM_ID, align 4
  %17 = load i32, i32* @RBBIM_STYLE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @RBBIM_LPARAM, align 4
  %20 = or i32 %18, %19
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 6
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @RBBS_GRIPPERALWAYS, align 4
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 5
  store i32 %27, i32* %28, align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %30 = ptrtoint %struct.TYPE_22__* %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 4
  store i64 %30, i64* %31, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %3
  %38 = load i32, i32* @hInstance, align 4
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @AllocAndLoadString(i32** %7, i32 %38, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load i32, i32* @RBBIM_TEXT, align 4
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 3
  store i32* %50, i32** %51, align 8
  br label %52

52:                                               ; preds = %45, %37
  br label %53

53:                                               ; preds = %52, %3
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load i32, i32* @RBBIM_CHILD, align 4
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 4
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  store i32* %65, i32** %66, align 8
  br label %67

67:                                               ; preds = %58, %53
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %84 [
    i32 128, label %72
  ]

72:                                               ; preds = %67
  %73 = bitcast %struct.TYPE_21__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %73, i8 0, i64 4, i1 false)
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @FALSE, align 4
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @TbdCreateToolbarWnd(%struct.TYPE_20__* %74, %struct.TYPE_22__* %75, i32 %79, i32 -1, %struct.TYPE_19__* %8, i32 %82, i32* null, i32 -1, i32 %80)
  store i32 %83, i32* %9, align 4
  br label %173

84:                                               ; preds = %67
  store i32 -1, i32* %11, align 4
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %12, align 4
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 5
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i32 (%struct.TYPE_20__*, %struct.TYPE_23__*, i32, i32*, %struct.TYPE_19__*)*, i32 (%struct.TYPE_20__*, %struct.TYPE_23__*, i32, i32*, %struct.TYPE_19__*)** %89, align 8
  %91 = icmp ne i32 (%struct.TYPE_20__*, %struct.TYPE_23__*, i32, i32*, %struct.TYPE_19__*)* %90, null
  br i1 %91, label %92, label %105

92:                                               ; preds = %84
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 5
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i32 (%struct.TYPE_20__*, %struct.TYPE_23__*, i32, i32*, %struct.TYPE_19__*)*, i32 (%struct.TYPE_20__*, %struct.TYPE_23__*, i32, i32*, %struct.TYPE_19__*)** %96, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call i32 %97(%struct.TYPE_20__* %98, %struct.TYPE_23__* %100, i32 %103, i32* %11, %struct.TYPE_19__* %8)
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %92, %84
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %172

108:                                              ; preds = %105
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 5
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  %113 = load i32 (%struct.TYPE_20__*, %struct.TYPE_23__*, i32, i32, i32, %struct.TYPE_19__*)*, i32 (%struct.TYPE_20__*, %struct.TYPE_23__*, i32, i32, i32, %struct.TYPE_19__*)** %112, align 8
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 %113(%struct.TYPE_20__* %114, %struct.TYPE_23__* %116, i32 %119, i32 128, i32 %123, %struct.TYPE_19__* %8)
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @RBBIM_CHILD, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %108
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 3
  store i32* %132, i32** %134, align 8
  br label %138

135:                                              ; preds = %108
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 3
  store i32* null, i32** %137, align 8
  br label %138

138:                                              ; preds = %135, %130
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* %6, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @RB_INSERTBAND, align 4
  %146 = load i32, i32* %11, align 4
  %147 = ptrtoint %struct.TYPE_19__* %8 to i64
  %148 = call i32 @SendMessage(i32 %144, i32 %145, i32 %146, i64 %147)
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i32
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %171

153:                                              ; preds = %138
  %154 = load i64, i64* %6, align 8
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i64, i64* %6, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @RB_IDTOINDEX, align 4
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @SendMessage(i32 %162, i32 %163, i32 %167, i64 0)
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 8
  br label %171

171:                                              ; preds = %153, %138
  br label %172

172:                                              ; preds = %171, %105
  br label %173

173:                                              ; preds = %172, %72
  %174 = load i32*, i32** %7, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = load i32*, i32** %7, align 8
  %178 = ptrtoint i32* %177 to i32
  %179 = call i32 @LocalFree(i32 %178)
  br label %180

180:                                              ; preds = %176, %173
  %181 = load i32, i32* %9, align 4
  ret i32 %181
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @AllocAndLoadString(i32**, i32, i64) #2

declare dso_local i32 @TbdCreateToolbarWnd(%struct.TYPE_20__*, %struct.TYPE_22__*, i32, i32, %struct.TYPE_19__*, i32, i32*, i32, i32) #2

declare dso_local i32 @SendMessage(i32, i32, i32, i64) #2

declare dso_local i32 @LocalFree(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
