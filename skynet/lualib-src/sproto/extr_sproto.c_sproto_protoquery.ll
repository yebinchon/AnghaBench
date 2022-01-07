; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_sproto_protoquery.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_sproto_protoquery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sproto_type = type { i32 }
%struct.sproto = type { i32 }
%struct.protocol = type { %struct.sproto_type** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sproto_type* @sproto_protoquery(%struct.sproto* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sproto_type*, align 8
  %5 = alloca %struct.sproto*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.protocol*, align 8
  store %struct.sproto* %0, %struct.sproto** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  store %struct.sproto_type* null, %struct.sproto_type** %4, align 8
  br label %30

15:                                               ; preds = %11
  %16 = load %struct.sproto*, %struct.sproto** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.protocol* @query_proto(%struct.sproto* %16, i32 %17)
  store %struct.protocol* %18, %struct.protocol** %8, align 8
  %19 = load %struct.protocol*, %struct.protocol** %8, align 8
  %20 = icmp ne %struct.protocol* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load %struct.protocol*, %struct.protocol** %8, align 8
  %23 = getelementptr inbounds %struct.protocol, %struct.protocol* %22, i32 0, i32 0
  %24 = load %struct.sproto_type**, %struct.sproto_type*** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.sproto_type*, %struct.sproto_type** %24, i64 %26
  %28 = load %struct.sproto_type*, %struct.sproto_type** %27, align 8
  store %struct.sproto_type* %28, %struct.sproto_type** %4, align 8
  br label %30

29:                                               ; preds = %15
  store %struct.sproto_type* null, %struct.sproto_type** %4, align 8
  br label %30

30:                                               ; preds = %29, %21, %14
  %31 = load %struct.sproto_type*, %struct.sproto_type** %4, align 8
  ret %struct.sproto_type* %31
}

declare dso_local %struct.protocol* @query_proto(%struct.sproto*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
