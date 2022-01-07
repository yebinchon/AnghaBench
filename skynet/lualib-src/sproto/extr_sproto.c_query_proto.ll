; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_query_proto.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_query_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protocol = type { i32 }
%struct.sproto = type { i32, %struct.protocol* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.protocol* (%struct.sproto*, i32)* @query_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.protocol* @query_proto(%struct.sproto* %0, i32 %1) #0 {
  %3 = alloca %struct.protocol*, align 8
  %4 = alloca %struct.sproto*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sproto* %0, %struct.sproto** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.sproto*, %struct.sproto** %4, align 8
  %11 = getelementptr inbounds %struct.sproto, %struct.sproto* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  br label %13

13:                                               ; preds = %49, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %50

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %18, %19
  %21 = sdiv i32 %20, 2
  store i32 %21, i32* %8, align 4
  %22 = load %struct.sproto*, %struct.sproto** %4, align 8
  %23 = getelementptr inbounds %struct.sproto, %struct.sproto* %22, i32 0, i32 1
  %24 = load %struct.protocol*, %struct.protocol** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.protocol, %struct.protocol* %24, i64 %26
  %28 = getelementptr inbounds %struct.protocol, %struct.protocol* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %17
  %34 = load %struct.sproto*, %struct.sproto** %4, align 8
  %35 = getelementptr inbounds %struct.sproto, %struct.sproto* %34, i32 0, i32 1
  %36 = load %struct.protocol*, %struct.protocol** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.protocol, %struct.protocol* %36, i64 %38
  store %struct.protocol* %39, %struct.protocol** %3, align 8
  br label %51

40:                                               ; preds = %17
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %47, %44
  br label %13

50:                                               ; preds = %13
  store %struct.protocol* null, %struct.protocol** %3, align 8
  br label %51

51:                                               ; preds = %50, %33
  %52 = load %struct.protocol*, %struct.protocol** %3, align 8
  ret %struct.protocol* %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
