; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_databuffer.h_databuffer_read.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_databuffer.h_databuffer_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.databuffer = type { i32, i32, %struct.message* }
%struct.message = type { i32, i32 }
%struct.messagepool = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.databuffer*, %struct.messagepool*, i8*, i32)* @databuffer_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @databuffer_read(%struct.databuffer* %0, %struct.messagepool* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.databuffer*, align 8
  %6 = alloca %struct.messagepool*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.message*, align 8
  %10 = alloca i32, align 4
  store %struct.databuffer* %0, %struct.databuffer** %5, align 8
  store %struct.messagepool* %1, %struct.messagepool** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.databuffer*, %struct.databuffer** %5, align 8
  %12 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp sge i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.databuffer*, %struct.databuffer** %5, align 8
  %20 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, %18
  store i32 %22, i32* %20, align 8
  br label %23

23:                                               ; preds = %96, %4
  %24 = load %struct.databuffer*, %struct.databuffer** %5, align 8
  %25 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %24, i32 0, i32 2
  %26 = load %struct.message*, %struct.message** %25, align 8
  store %struct.message* %26, %struct.message** %9, align 8
  %27 = load %struct.message*, %struct.message** %9, align 8
  %28 = getelementptr inbounds %struct.message, %struct.message* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.databuffer*, %struct.databuffer** %5, align 8
  %31 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %29, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %23
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.message*, %struct.message** %9, align 8
  %40 = getelementptr inbounds %struct.message, %struct.message* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.databuffer*, %struct.databuffer** %5, align 8
  %43 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %41, %44
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @memcpy(i8* %38, i32 %45, i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.databuffer*, %struct.databuffer** %5, align 8
  %50 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %97

53:                                               ; preds = %23
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.message*, %struct.message** %9, align 8
  %60 = getelementptr inbounds %struct.message, %struct.message* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.databuffer*, %struct.databuffer** %5, align 8
  %63 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %61, %64
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @memcpy(i8* %58, i32 %65, i32 %66)
  %68 = load %struct.databuffer*, %struct.databuffer** %5, align 8
  %69 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %68, i32 0, i32 1
  store i32 0, i32* %69, align 4
  %70 = load %struct.databuffer*, %struct.databuffer** %5, align 8
  %71 = load %struct.messagepool*, %struct.messagepool** %6, align 8
  %72 = call i32 @_return_message(%struct.databuffer* %70, %struct.messagepool* %71)
  br label %97

73:                                               ; preds = %53
  %74 = load i8*, i8** %7, align 8
  %75 = load %struct.message*, %struct.message** %9, align 8
  %76 = getelementptr inbounds %struct.message, %struct.message* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.databuffer*, %struct.databuffer** %5, align 8
  %79 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %77, %80
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @memcpy(i8* %74, i32 %81, i32 %82)
  %84 = load %struct.databuffer*, %struct.databuffer** %5, align 8
  %85 = load %struct.messagepool*, %struct.messagepool** %6, align 8
  %86 = call i32 @_return_message(%struct.databuffer* %84, %struct.messagepool* %85)
  %87 = load %struct.databuffer*, %struct.databuffer** %5, align 8
  %88 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %87, i32 0, i32 1
  store i32 0, i32* %88, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr i8, i8* %90, i64 %91
  store i8* %92, i8** %7, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %8, align 4
  %95 = sub nsw i32 %94, %93
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %73
  br label %23

97:                                               ; preds = %57, %37
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @_return_message(%struct.databuffer*, %struct.messagepool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
