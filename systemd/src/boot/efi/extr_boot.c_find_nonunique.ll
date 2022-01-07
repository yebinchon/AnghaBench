; ModuleID = '/home/carl/AnghaBench/systemd/src/boot/efi/extr_boot.c_find_nonunique.c'
source_filename = "/home/carl/AnghaBench/systemd/src/boot/efi/extr_boot.c_find_nonunique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__**, i64)* @find_nonunique to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_nonunique(%struct.TYPE_3__** %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i8*, i8** @FALSE, align 8
  store i8* %8, i8** %5, align 8
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %20, %2
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load i8*, i8** @FALSE, align 8
  %15 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %15, i64 %16
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i8* %14, i8** %19, align 8
  br label %20

20:                                               ; preds = %13
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %6, align 8
  br label %9

23:                                               ; preds = %9
  store i64 0, i64* %6, align 8
  br label %24

24:                                               ; preds = %70, %23
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %73

28:                                               ; preds = %24
  store i64 0, i64* %7, align 8
  br label %29

29:                                               ; preds = %66, %28
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %69

33:                                               ; preds = %29
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %66

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %39, i64 %40
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %45, i64 %46
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @StrCmp(i32 %44, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %38
  br label %66

54:                                               ; preds = %38
  %55 = load i8*, i8** @TRUE, align 8
  %56 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %56, i64 %57
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i8* %55, i8** %60, align 8
  %61 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %61, i64 %62
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i8* %55, i8** %65, align 8
  store i8* %55, i8** %5, align 8
  br label %66

66:                                               ; preds = %54, %53, %37
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %7, align 8
  br label %29

69:                                               ; preds = %29
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %6, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %6, align 8
  br label %24

73:                                               ; preds = %24
  %74 = load i8*, i8** %5, align 8
  ret i8* %74
}

declare dso_local i64 @StrCmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
