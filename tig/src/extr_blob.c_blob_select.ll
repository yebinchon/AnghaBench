; ModuleID = '/home/carl/AnghaBench/tig/src/extr_blob.c_blob_select.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_blob.c_blob_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.blob_state* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.blob_state = type { i64 }
%struct.line = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.view*, %struct.line*)* @blob_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blob_select(%struct.view* %0, %struct.line* %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca %struct.line*, align 8
  %5 = alloca %struct.blob_state*, align 8
  store %struct.view* %0, %struct.view** %3, align 8
  store %struct.line* %1, %struct.line** %4, align 8
  %6 = load %struct.view*, %struct.view** %3, align 8
  %7 = getelementptr inbounds %struct.view, %struct.view* %6, i32 0, i32 2
  %8 = load %struct.blob_state*, %struct.blob_state** %7, align 8
  store %struct.blob_state* %8, %struct.blob_state** %5, align 8
  %9 = load %struct.blob_state*, %struct.blob_state** %5, align 8
  %10 = getelementptr inbounds %struct.blob_state, %struct.blob_state* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.view*, %struct.view** %3, align 8
  %15 = getelementptr inbounds %struct.view, %struct.view* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.blob_state*, %struct.blob_state** %5, align 8
  %20 = getelementptr inbounds %struct.blob_state, %struct.blob_state* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @string_format(i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %21)
  br label %23

23:                                               ; preds = %13, %2
  %24 = load %struct.view*, %struct.view** %3, align 8
  %25 = getelementptr inbounds %struct.view, %struct.view* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  %29 = load %struct.view*, %struct.view** %3, align 8
  %30 = getelementptr inbounds %struct.view, %struct.view* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i64 %28, i64* %32, align 8
  ret void
}

declare dso_local i32 @string_format(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
