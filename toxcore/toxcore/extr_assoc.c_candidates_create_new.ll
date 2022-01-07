; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_assoc.c_candidates_create_new.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_assoc.c_candidates_create_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i32, i32, i32, i8*, %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_25__ = type { i8*, %struct.TYPE_24__, i32, %struct.TYPE_24__ }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, i32, i32*, i32, %struct.TYPE_26__*, %struct.TYPE_24__*)* @candidates_create_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @candidates_create_new(%struct.TYPE_28__* %0, i32 %1, i32* %2, i32 %3, %struct.TYPE_26__* %4, %struct.TYPE_24__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_23__*, align 8
  %17 = alloca %struct.TYPE_27__*, align 8
  %18 = alloca %struct.TYPE_25__*, align 8
  %19 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_26__* %4, %struct.TYPE_26__** %12, align 8
  store %struct.TYPE_24__* %5, %struct.TYPE_24__** %13, align 8
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %21 = icmp ne %struct.TYPE_28__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %6
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %27 = icmp ne %struct.TYPE_26__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %22, %6
  store i32 0, i32* %7, align 4
  br label %146

29:                                               ; preds = %25
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %34 = icmp ne %struct.TYPE_24__* %33, null
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @candidates_create_internal(%struct.TYPE_28__* %30, i32 %31, i32* %32, i32 %35, i32 %36, i64* %14, i64* %15)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %146

40:                                               ; preds = %29
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %42, align 8
  %44 = load i64, i64* %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i64 %44
  store %struct.TYPE_23__* %45, %struct.TYPE_23__** %16, align 8
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %47, align 8
  %49 = load i64, i64* %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i64 %49
  store %struct.TYPE_27__* %50, %struct.TYPE_27__** %17, align 8
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %52 = call i32 @memset(%struct.TYPE_27__* %51, i32 0, i32 32)
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 0
  %56 = call %struct.TYPE_25__* @entry_assoc(%struct.TYPE_27__* %53, %struct.TYPE_24__* %55)
  store %struct.TYPE_25__* %56, %struct.TYPE_25__** %18, align 8
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %58 = icmp ne %struct.TYPE_25__* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %146

60:                                               ; preds = %40
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @id_copy(i32 %67, i32* %68)
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %60
  %73 = call i8* (...) @unix_time()
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %74, i32 0, i32 4
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %72, %60
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %78 = icmp ne %struct.TYPE_24__* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %81 = call i32 @ipport_isset(%struct.TYPE_24__* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %13, align 8
  br label %84

84:                                               ; preds = %83, %79, %76
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %86 = icmp ne %struct.TYPE_24__* %85, null
  br i1 %86, label %87, label %119

87:                                               ; preds = %84
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 0
  %104 = bitcast %struct.TYPE_24__* %101 to i8*
  %105 = bitcast %struct.TYPE_24__* %103 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %104, i8* align 4 %105, i64 4, i1 false)
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %114 = bitcast %struct.TYPE_24__* %112 to i8*
  %115 = bitcast %struct.TYPE_24__* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %114, i8* align 4 %115, i64 4, i1 false)
  %116 = call i8* (...) @unix_time()
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  br label %145

119:                                              ; preds = %84
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 0
  %123 = call %struct.TYPE_24__* @entry_heard_get(%struct.TYPE_27__* %120, %struct.TYPE_24__* %122)
  store %struct.TYPE_24__* %123, %struct.TYPE_24__** %19, align 8
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %125 = icmp ne %struct.TYPE_24__* %124, null
  br i1 %125, label %126, label %144

126:                                              ; preds = %119
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 0
  %142 = bitcast %struct.TYPE_24__* %139 to i8*
  %143 = bitcast %struct.TYPE_24__* %141 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %142, i8* align 4 %143, i64 4, i1 false)
  br label %144

144:                                              ; preds = %126, %119
  br label %145

145:                                              ; preds = %144, %87
  store i32 1, i32* %7, align 4
  br label %146

146:                                              ; preds = %145, %59, %39, %28
  %147 = load i32, i32* %7, align 4
  ret i32 %147
}

declare dso_local i32 @candidates_create_internal(%struct.TYPE_28__*, i32, i32*, i32, i32, i64*, i64*) #1

declare dso_local i32 @memset(%struct.TYPE_27__*, i32, i32) #1

declare dso_local %struct.TYPE_25__* @entry_assoc(%struct.TYPE_27__*, %struct.TYPE_24__*) #1

declare dso_local i32 @id_copy(i32, i32*) #1

declare dso_local i8* @unix_time(...) #1

declare dso_local i32 @ipport_isset(%struct.TYPE_24__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_24__* @entry_heard_get(%struct.TYPE_27__*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
