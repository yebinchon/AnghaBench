; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_handle.c_skynet_handle_register.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_handle.c_skynet_handle_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.handle_storage = type { i32, i32, i32, %struct.skynet_context**, i32 }
%struct.skynet_context = type { i32 }

@H = common dso_local global %struct.handle_storage* null, align 8
@HANDLE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skynet_handle_register(%struct.skynet_context* %0) #0 {
  %2 = alloca %struct.skynet_context*, align 8
  %3 = alloca %struct.handle_storage*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.skynet_context**, align 8
  %8 = alloca i32, align 4
  store %struct.skynet_context* %0, %struct.skynet_context** %2, align 8
  %9 = load %struct.handle_storage*, %struct.handle_storage** @H, align 8
  store %struct.handle_storage* %9, %struct.handle_storage** %3, align 8
  %10 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %11 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %10, i32 0, i32 4
  %12 = call i32 @rwlock_wlock(i32* %11)
  br label %13

13:                                               ; preds = %140, %1
  %14 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %15 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %65, %13
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %20 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %70

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @HANDLE_MASK, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %23
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %31 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  %34 = and i32 %29, %33
  store i32 %34, i32* %6, align 4
  %35 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %36 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %35, i32 0, i32 3
  %37 = load %struct.skynet_context**, %struct.skynet_context*** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.skynet_context*, %struct.skynet_context** %37, i64 %39
  %41 = load %struct.skynet_context*, %struct.skynet_context** %40, align 8
  %42 = icmp eq %struct.skynet_context* %41, null
  br i1 %42, label %43, label %64

43:                                               ; preds = %28
  %44 = load %struct.skynet_context*, %struct.skynet_context** %2, align 8
  %45 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %46 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %45, i32 0, i32 3
  %47 = load %struct.skynet_context**, %struct.skynet_context*** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.skynet_context*, %struct.skynet_context** %47, i64 %49
  store %struct.skynet_context* %44, %struct.skynet_context** %50, align 8
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  %53 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %54 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %56 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %55, i32 0, i32 4
  %57 = call i32 @rwlock_wunlock(i32* %56)
  %58 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %59 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  ret i32 %63

64:                                               ; preds = %28
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %17

70:                                               ; preds = %17
  %71 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %72 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %73, 2
  %75 = sub nsw i32 %74, 1
  %76 = load i32, i32* @HANDLE_MASK, align 4
  %77 = icmp sle i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %81 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 8
  %86 = trunc i64 %85 to i32
  %87 = call %struct.skynet_context** @skynet_malloc(i32 %86)
  store %struct.skynet_context** %87, %struct.skynet_context*** %7, align 8
  %88 = load %struct.skynet_context**, %struct.skynet_context*** %7, align 8
  %89 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %90 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %91, 2
  %93 = sext i32 %92 to i64
  %94 = mul i64 %93, 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @memset(%struct.skynet_context** %88, i32 0, i32 %95)
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %137, %70
  %98 = load i32, i32* %4, align 4
  %99 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %100 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %140

103:                                              ; preds = %97
  %104 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %105 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %104, i32 0, i32 3
  %106 = load %struct.skynet_context**, %struct.skynet_context*** %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.skynet_context*, %struct.skynet_context** %106, i64 %108
  %110 = load %struct.skynet_context*, %struct.skynet_context** %109, align 8
  %111 = call i32 @skynet_context_handle(%struct.skynet_context* %110)
  %112 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %113 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %114, 2
  %116 = sub nsw i32 %115, 1
  %117 = and i32 %111, %116
  store i32 %117, i32* %8, align 4
  %118 = load %struct.skynet_context**, %struct.skynet_context*** %7, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.skynet_context*, %struct.skynet_context** %118, i64 %120
  %122 = load %struct.skynet_context*, %struct.skynet_context** %121, align 8
  %123 = icmp eq %struct.skynet_context* %122, null
  %124 = zext i1 %123 to i32
  %125 = call i32 @assert(i32 %124)
  %126 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %127 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %126, i32 0, i32 3
  %128 = load %struct.skynet_context**, %struct.skynet_context*** %127, align 8
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.skynet_context*, %struct.skynet_context** %128, i64 %130
  %132 = load %struct.skynet_context*, %struct.skynet_context** %131, align 8
  %133 = load %struct.skynet_context**, %struct.skynet_context*** %7, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.skynet_context*, %struct.skynet_context** %133, i64 %135
  store %struct.skynet_context* %132, %struct.skynet_context** %136, align 8
  br label %137

137:                                              ; preds = %103
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %4, align 4
  br label %97

140:                                              ; preds = %97
  %141 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %142 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %141, i32 0, i32 3
  %143 = load %struct.skynet_context**, %struct.skynet_context*** %142, align 8
  %144 = call i32 @skynet_free(%struct.skynet_context** %143)
  %145 = load %struct.skynet_context**, %struct.skynet_context*** %7, align 8
  %146 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %147 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %146, i32 0, i32 3
  store %struct.skynet_context** %145, %struct.skynet_context*** %147, align 8
  %148 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %149 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %150, 2
  store i32 %151, i32* %149, align 4
  br label %13
}

declare dso_local i32 @rwlock_wlock(i32*) #1

declare dso_local i32 @rwlock_wunlock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.skynet_context** @skynet_malloc(i32) #1

declare dso_local i32 @memset(%struct.skynet_context**, i32, i32) #1

declare dso_local i32 @skynet_context_handle(%struct.skynet_context*) #1

declare dso_local i32 @skynet_free(%struct.skynet_context**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
