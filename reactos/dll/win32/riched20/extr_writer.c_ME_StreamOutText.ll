; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_writer.c_ME_StreamOutText.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_writer.c_ME_StreamOutText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_13__*, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64 }

@CP_ACP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@SF_USECODEPAGE = common dso_local global i32 0, align 4
@MERF_ENDPARA = common dso_local global i32 0, align 4
@ME_StreamOutText.szEOL = internal constant [2 x i8] c"\0D\0A", align 1
@SF_UNICODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@diRun = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i32*, %struct.TYPE_11__*, i32, i32)* @ME_StreamOutText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ME_StreamOutText(%struct.TYPE_10__* %0, i32* %1, %struct.TYPE_11__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %20 = bitcast %struct.TYPE_11__* %12 to i8*
  %21 = bitcast %struct.TYPE_11__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  %22 = load i32, i32* @CP_ACP, align 4
  store i32 %22, i32* %14, align 4
  store i8* null, i8** %15, align 8
  store i32 0, i32* %16, align 4
  %23 = load i64, i64* @TRUE, align 8
  store i64 %23, i64* %17, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = icmp ne %struct.TYPE_13__* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %5
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %6, align 8
  br label %159

29:                                               ; preds = %5
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @SF_USECODEPAGE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @HIWORD(i32 %35)
  store i32 %36, i32* %14, align 4
  br label %37

37:                                               ; preds = %34, %29
  br label %38

38:                                               ; preds = %145, %37
  %39 = load i64, i64* %17, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = icmp ne %struct.TYPE_13__* %46, null
  br label %48

48:                                               ; preds = %44, %41, %38
  %49 = phi i1 [ false, %41 ], [ false, %38 ], [ %47, %44 ]
  br i1 %49, label %50, label %155

50:                                               ; preds = %48
  %51 = load i32, i32* %10, align 4
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %57, %59
  %61 = call i32 @min(i32 %51, i64 %60)
  store i32 %61, i32* %13, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %88, label %66

66:                                               ; preds = %50
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @MERF_ENDPARA, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %66
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @SF_UNICODE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32*, i32** %8, align 8
  %83 = call i64 @ME_StreamOutMove(i32* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ME_StreamOutText.szEOL, i64 0, i64 0), i32 2)
  store i64 %83, i64* %17, align 8
  br label %87

84:                                               ; preds = %76
  %85 = load i32*, i32** %8, align 8
  %86 = call i64 @ME_StreamOutMove(i32* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  store i64 %86, i64* %17, align 8
  br label %87

87:                                               ; preds = %84, %81
  br label %145

88:                                               ; preds = %66, %50
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @SF_UNICODE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %88
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @get_text(%struct.TYPE_12__* %98, i64 %100)
  %102 = inttoptr i64 %101 to i8*
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 1, %104
  %106 = trunc i64 %105 to i32
  %107 = call i64 @ME_StreamOutMove(i32* %94, i8* %102, i32 %106)
  store i64 %107, i64* %17, align 8
  br label %144

108:                                              ; preds = %88
  %109 = load i32, i32* %14, align 4
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @get_text(%struct.TYPE_12__* %113, i64 %115)
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @WideCharToMultiByte(i32 %109, i32 0, i64 %116, i32 %117, i8* null, i32 0, i32* null, i32* null)
  store i32 %118, i32* %18, align 4
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* %16, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %108
  %123 = load i8*, i8** %15, align 8
  %124 = load i32, i32* %18, align 4
  %125 = call i8* @heap_realloc(i8* %123, i32 %124)
  store i8* %125, i8** %15, align 8
  %126 = load i32, i32* %18, align 4
  store i32 %126, i32* %16, align 4
  br label %127

127:                                              ; preds = %122, %108
  %128 = load i32, i32* %14, align 4
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = call i64 @get_text(%struct.TYPE_12__* %132, i64 %134)
  %136 = load i32, i32* %13, align 4
  %137 = load i8*, i8** %15, align 8
  %138 = load i32, i32* %18, align 4
  %139 = call i32 @WideCharToMultiByte(i32 %128, i32 0, i64 %135, i32 %136, i8* %137, i32 %138, i32* null, i32* null)
  %140 = load i32*, i32** %8, align 8
  %141 = load i8*, i8** %15, align 8
  %142 = load i32, i32* %18, align 4
  %143 = call i64 @ME_StreamOutMove(i32* %140, i8* %141, i32 %142)
  store i64 %143, i64* %17, align 8
  br label %144

144:                                              ; preds = %127, %93
  br label %145

145:                                              ; preds = %144, %87
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %10, align 4
  %148 = sub nsw i32 %147, %146
  store i32 %148, i32* %10, align 4
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  store i64 0, i64* %149, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  %152 = load i32, i32* @diRun, align 4
  %153 = call %struct.TYPE_13__* @ME_FindItemFwd(%struct.TYPE_13__* %151, i32 %152)
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  store %struct.TYPE_13__* %153, %struct.TYPE_13__** %154, align 8
  br label %38

155:                                              ; preds = %48
  %156 = load i8*, i8** %15, align 8
  %157 = call i32 @heap_free(i8* %156)
  %158 = load i64, i64* %17, align 8
  store i64 %158, i64* %6, align 8
  br label %159

159:                                              ; preds = %155, %27
  %160 = load i64, i64* %6, align 8
  ret i64 %160
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @HIWORD(i32) #2

declare dso_local i32 @min(i32, i64) #2

declare dso_local i64 @ME_StreamOutMove(i32*, i8*, i32) #2

declare dso_local i64 @get_text(%struct.TYPE_12__*, i64) #2

declare dso_local i32 @WideCharToMultiByte(i32, i32, i64, i32, i8*, i32, i32*, i32*) #2

declare dso_local i8* @heap_realloc(i8*, i32) #2

declare dso_local %struct.TYPE_13__* @ME_FindItemFwd(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @heap_free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
