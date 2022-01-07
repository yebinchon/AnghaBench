; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Symbolcmpp.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Symbolcmpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i64, i8*, i32 }

@MULTITERMINAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Symbolcmpp(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.symbol**
  %11 = load %struct.symbol*, %struct.symbol** %10, align 8
  store %struct.symbol* %11, %struct.symbol** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.symbol**
  %14 = load %struct.symbol*, %struct.symbol** %13, align 8
  store %struct.symbol* %14, %struct.symbol** %6, align 8
  %15 = load %struct.symbol*, %struct.symbol** %5, align 8
  %16 = getelementptr inbounds %struct.symbol, %struct.symbol* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MULTITERMINAL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %31

21:                                               ; preds = %2
  %22 = load %struct.symbol*, %struct.symbol** %5, align 8
  %23 = getelementptr inbounds %struct.symbol, %struct.symbol* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp sgt i32 %27, 90
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 2, i32 1
  br label %31

31:                                               ; preds = %21, %20
  %32 = phi i32 [ 3, %20 ], [ %30, %21 ]
  store i32 %32, i32* %7, align 4
  %33 = load %struct.symbol*, %struct.symbol** %6, align 8
  %34 = getelementptr inbounds %struct.symbol, %struct.symbol* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MULTITERMINAL, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %49

39:                                               ; preds = %31
  %40 = load %struct.symbol*, %struct.symbol** %6, align 8
  %41 = getelementptr inbounds %struct.symbol, %struct.symbol* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp sgt i32 %45, 90
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 2, i32 1
  br label %49

49:                                               ; preds = %39, %38
  %50 = phi i32 [ 3, %38 ], [ %48, %39 ]
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.symbol*, %struct.symbol** %5, align 8
  %56 = getelementptr inbounds %struct.symbol, %struct.symbol* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.symbol*, %struct.symbol** %6, align 8
  %59 = getelementptr inbounds %struct.symbol, %struct.symbol* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %57, %60
  br label %66

62:                                               ; preds = %49
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 %63, %64
  br label %66

66:                                               ; preds = %62, %54
  %67 = phi i32 [ %61, %54 ], [ %65, %62 ]
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
