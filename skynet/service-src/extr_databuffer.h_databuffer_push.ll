; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_databuffer.h_databuffer_push.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_databuffer.h_databuffer_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.databuffer = type { i32, %struct.message*, %struct.message* }
%struct.message = type { i32, %struct.message*, i32* }
%struct.messagepool = type { %struct.message*, %struct.messagepool_list* }
%struct.messagepool_list = type { %struct.messagepool_list*, %struct.message* }

@MESSAGEPOOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.databuffer*, %struct.messagepool*, i8*, i32)* @databuffer_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @databuffer_push(%struct.databuffer* %0, %struct.messagepool* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.databuffer*, align 8
  %6 = alloca %struct.messagepool*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.message*, align 8
  %10 = alloca %struct.messagepool_list*, align 8
  %11 = alloca %struct.message*, align 8
  %12 = alloca i32, align 4
  store %struct.databuffer* %0, %struct.databuffer** %5, align 8
  store %struct.messagepool* %1, %struct.messagepool** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.messagepool*, %struct.messagepool** %6, align 8
  %14 = getelementptr inbounds %struct.messagepool, %struct.messagepool* %13, i32 0, i32 0
  %15 = load %struct.message*, %struct.message** %14, align 8
  %16 = icmp ne %struct.message* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %4
  %18 = load %struct.messagepool*, %struct.messagepool** %6, align 8
  %19 = getelementptr inbounds %struct.messagepool, %struct.messagepool* %18, i32 0, i32 0
  %20 = load %struct.message*, %struct.message** %19, align 8
  store %struct.message* %20, %struct.message** %9, align 8
  %21 = load %struct.message*, %struct.message** %9, align 8
  %22 = getelementptr inbounds %struct.message, %struct.message* %21, i32 0, i32 1
  %23 = load %struct.message*, %struct.message** %22, align 8
  %24 = load %struct.messagepool*, %struct.messagepool** %6, align 8
  %25 = getelementptr inbounds %struct.messagepool, %struct.messagepool* %24, i32 0, i32 0
  store %struct.message* %23, %struct.message** %25, align 8
  br label %80

26:                                               ; preds = %4
  %27 = call %struct.messagepool_list* @skynet_malloc(i32 16)
  store %struct.messagepool_list* %27, %struct.messagepool_list** %10, align 8
  %28 = load %struct.messagepool_list*, %struct.messagepool_list** %10, align 8
  %29 = getelementptr inbounds %struct.messagepool_list, %struct.messagepool_list* %28, i32 0, i32 1
  %30 = load %struct.message*, %struct.message** %29, align 8
  store %struct.message* %30, %struct.message** %11, align 8
  store i32 1, i32* %12, align 4
  br label %31

31:                                               ; preds = %56, %26
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @MESSAGEPOOL, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %31
  %36 = load %struct.message*, %struct.message** %11, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.message, %struct.message* %36, i64 %38
  %40 = getelementptr inbounds %struct.message, %struct.message* %39, i32 0, i32 2
  store i32* null, i32** %40, align 8
  %41 = load %struct.message*, %struct.message** %11, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.message, %struct.message* %41, i64 %43
  %45 = getelementptr inbounds %struct.message, %struct.message* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.message*, %struct.message** %11, align 8
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.message, %struct.message* %46, i64 %49
  %51 = load %struct.message*, %struct.message** %11, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.message, %struct.message* %51, i64 %53
  %55 = getelementptr inbounds %struct.message, %struct.message* %54, i32 0, i32 1
  store %struct.message* %50, %struct.message** %55, align 8
  br label %56

56:                                               ; preds = %35
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %31

59:                                               ; preds = %31
  %60 = load %struct.message*, %struct.message** %11, align 8
  %61 = load i32, i32* @MESSAGEPOOL, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.message, %struct.message* %60, i64 %63
  %65 = getelementptr inbounds %struct.message, %struct.message* %64, i32 0, i32 1
  store %struct.message* null, %struct.message** %65, align 8
  %66 = load %struct.messagepool*, %struct.messagepool** %6, align 8
  %67 = getelementptr inbounds %struct.messagepool, %struct.messagepool* %66, i32 0, i32 1
  %68 = load %struct.messagepool_list*, %struct.messagepool_list** %67, align 8
  %69 = load %struct.messagepool_list*, %struct.messagepool_list** %10, align 8
  %70 = getelementptr inbounds %struct.messagepool_list, %struct.messagepool_list* %69, i32 0, i32 0
  store %struct.messagepool_list* %68, %struct.messagepool_list** %70, align 8
  %71 = load %struct.messagepool_list*, %struct.messagepool_list** %10, align 8
  %72 = load %struct.messagepool*, %struct.messagepool** %6, align 8
  %73 = getelementptr inbounds %struct.messagepool, %struct.messagepool* %72, i32 0, i32 1
  store %struct.messagepool_list* %71, %struct.messagepool_list** %73, align 8
  %74 = load %struct.message*, %struct.message** %11, align 8
  %75 = getelementptr inbounds %struct.message, %struct.message* %74, i64 0
  store %struct.message* %75, %struct.message** %9, align 8
  %76 = load %struct.message*, %struct.message** %11, align 8
  %77 = getelementptr inbounds %struct.message, %struct.message* %76, i64 1
  %78 = load %struct.messagepool*, %struct.messagepool** %6, align 8
  %79 = getelementptr inbounds %struct.messagepool, %struct.messagepool* %78, i32 0, i32 0
  store %struct.message* %77, %struct.message** %79, align 8
  br label %80

80:                                               ; preds = %59, %17
  %81 = load i8*, i8** %7, align 8
  %82 = bitcast i8* %81 to i32*
  %83 = load %struct.message*, %struct.message** %9, align 8
  %84 = getelementptr inbounds %struct.message, %struct.message* %83, i32 0, i32 2
  store i32* %82, i32** %84, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.message*, %struct.message** %9, align 8
  %87 = getelementptr inbounds %struct.message, %struct.message* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.message*, %struct.message** %9, align 8
  %89 = getelementptr inbounds %struct.message, %struct.message* %88, i32 0, i32 1
  store %struct.message* null, %struct.message** %89, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.databuffer*, %struct.databuffer** %5, align 8
  %92 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load %struct.databuffer*, %struct.databuffer** %5, align 8
  %96 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %95, i32 0, i32 2
  %97 = load %struct.message*, %struct.message** %96, align 8
  %98 = icmp eq %struct.message* %97, null
  br i1 %98, label %99, label %111

99:                                               ; preds = %80
  %100 = load %struct.databuffer*, %struct.databuffer** %5, align 8
  %101 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %100, i32 0, i32 1
  %102 = load %struct.message*, %struct.message** %101, align 8
  %103 = icmp eq %struct.message* %102, null
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load %struct.message*, %struct.message** %9, align 8
  %107 = load %struct.databuffer*, %struct.databuffer** %5, align 8
  %108 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %107, i32 0, i32 1
  store %struct.message* %106, %struct.message** %108, align 8
  %109 = load %struct.databuffer*, %struct.databuffer** %5, align 8
  %110 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %109, i32 0, i32 2
  store %struct.message* %106, %struct.message** %110, align 8
  br label %120

111:                                              ; preds = %80
  %112 = load %struct.message*, %struct.message** %9, align 8
  %113 = load %struct.databuffer*, %struct.databuffer** %5, align 8
  %114 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %113, i32 0, i32 1
  %115 = load %struct.message*, %struct.message** %114, align 8
  %116 = getelementptr inbounds %struct.message, %struct.message* %115, i32 0, i32 1
  store %struct.message* %112, %struct.message** %116, align 8
  %117 = load %struct.message*, %struct.message** %9, align 8
  %118 = load %struct.databuffer*, %struct.databuffer** %5, align 8
  %119 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %118, i32 0, i32 1
  store %struct.message* %117, %struct.message** %119, align 8
  br label %120

120:                                              ; preds = %111, %99
  ret void
}

declare dso_local %struct.messagepool_list* @skynet_malloc(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
