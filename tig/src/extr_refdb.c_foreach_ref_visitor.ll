; ModuleID = '/home/carl/AnghaBench/tig/src/extr_refdb.c_foreach_ref_visitor.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_refdb.c_foreach_ref_visitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_visitor_data = type { i32 (i32, %struct.ref*)*, i32 }
%struct.ref = type opaque
%struct.ref.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @foreach_ref_visitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @foreach_ref_visitor(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ref_visitor_data*, align 8
  %7 = alloca %struct.ref.0*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ref_visitor_data*
  store %struct.ref_visitor_data* %9, %struct.ref_visitor_data** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.ref.0*
  store %struct.ref.0* %11, %struct.ref.0** %7, align 8
  %12 = load %struct.ref.0*, %struct.ref.0** %7, align 8
  %13 = getelementptr inbounds %struct.ref.0, %struct.ref.0* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %27

17:                                               ; preds = %2
  %18 = load %struct.ref_visitor_data*, %struct.ref_visitor_data** %6, align 8
  %19 = getelementptr inbounds %struct.ref_visitor_data, %struct.ref_visitor_data* %18, i32 0, i32 0
  %20 = load i32 (i32, %struct.ref*)*, i32 (i32, %struct.ref*)** %19, align 8
  %21 = load %struct.ref_visitor_data*, %struct.ref_visitor_data** %6, align 8
  %22 = getelementptr inbounds %struct.ref_visitor_data, %struct.ref_visitor_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ref.0*, %struct.ref.0** %7, align 8
  %25 = bitcast %struct.ref.0* %24 to %struct.ref*
  %26 = call i32 %20(i32 %23, %struct.ref* %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %17, %16
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
