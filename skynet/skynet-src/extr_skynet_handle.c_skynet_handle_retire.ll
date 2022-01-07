; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_handle.c_skynet_handle_retire.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_handle.c_skynet_handle_retire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.handle_storage = type { i32, i32, i32, %struct.TYPE_2__*, %struct.skynet_context** }
%struct.TYPE_2__ = type { i32, i32 }
%struct.skynet_context = type { i32 }

@H = common dso_local global %struct.handle_storage* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skynet_handle_retire(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.handle_storage*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.skynet_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %10 = load %struct.handle_storage*, %struct.handle_storage** @H, align 8
  store %struct.handle_storage* %10, %struct.handle_storage** %4, align 8
  %11 = load %struct.handle_storage*, %struct.handle_storage** %4, align 8
  %12 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %11, i32 0, i32 2
  %13 = call i32 @rwlock_wlock(i32* %12)
  %14 = load i32, i32* %2, align 4
  %15 = load %struct.handle_storage*, %struct.handle_storage** %4, align 8
  %16 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = and i32 %14, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.handle_storage*, %struct.handle_storage** %4, align 8
  %21 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %20, i32 0, i32 4
  %22 = load %struct.skynet_context**, %struct.skynet_context*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.skynet_context*, %struct.skynet_context** %22, i64 %24
  %26 = load %struct.skynet_context*, %struct.skynet_context** %25, align 8
  store %struct.skynet_context* %26, %struct.skynet_context** %6, align 8
  %27 = load %struct.skynet_context*, %struct.skynet_context** %6, align 8
  %28 = icmp ne %struct.skynet_context* %27, null
  br i1 %28, label %29, label %99

29:                                               ; preds = %1
  %30 = load %struct.skynet_context*, %struct.skynet_context** %6, align 8
  %31 = call i32 @skynet_context_handle(%struct.skynet_context* %30)
  %32 = load i32, i32* %2, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %99

34:                                               ; preds = %29
  %35 = load %struct.handle_storage*, %struct.handle_storage** %4, align 8
  %36 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %35, i32 0, i32 4
  %37 = load %struct.skynet_context**, %struct.skynet_context*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.skynet_context*, %struct.skynet_context** %37, i64 %39
  store %struct.skynet_context* null, %struct.skynet_context** %40, align 8
  store i32 1, i32* %3, align 4
  store i32 0, i32* %8, align 4
  %41 = load %struct.handle_storage*, %struct.handle_storage** %4, align 8
  %42 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %92, %34
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %95

48:                                               ; preds = %44
  %49 = load %struct.handle_storage*, %struct.handle_storage** %4, align 8
  %50 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %2, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %48
  %60 = load %struct.handle_storage*, %struct.handle_storage** %4, align 8
  %61 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @skynet_free(i32 %67)
  br label %92

69:                                               ; preds = %48
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %69
  %74 = load %struct.handle_storage*, %struct.handle_storage** %4, align 8
  %75 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %74, i32 0, i32 3
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = load %struct.handle_storage*, %struct.handle_storage** %4, align 8
  %81 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %80, i32 0, i32 3
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = bitcast %struct.TYPE_2__* %79 to i8*
  %87 = bitcast %struct.TYPE_2__* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %86, i8* align 4 %87, i64 8, i1 false)
  br label %88

88:                                               ; preds = %73, %69
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %89, %59
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %44

95:                                               ; preds = %44
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.handle_storage*, %struct.handle_storage** %4, align 8
  %98 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  br label %100

99:                                               ; preds = %29, %1
  store %struct.skynet_context* null, %struct.skynet_context** %6, align 8
  br label %100

100:                                              ; preds = %99, %95
  %101 = load %struct.handle_storage*, %struct.handle_storage** %4, align 8
  %102 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %101, i32 0, i32 2
  %103 = call i32 @rwlock_wunlock(i32* %102)
  %104 = load %struct.skynet_context*, %struct.skynet_context** %6, align 8
  %105 = icmp ne %struct.skynet_context* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load %struct.skynet_context*, %struct.skynet_context** %6, align 8
  %108 = call i32 @skynet_context_release(%struct.skynet_context* %107)
  br label %109

109:                                              ; preds = %106, %100
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @rwlock_wlock(i32*) #1

declare dso_local i32 @skynet_context_handle(%struct.skynet_context*) #1

declare dso_local i32 @skynet_free(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rwlock_wunlock(i32*) #1

declare dso_local i32 @skynet_context_release(%struct.skynet_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
