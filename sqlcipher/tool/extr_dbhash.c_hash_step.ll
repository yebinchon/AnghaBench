; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_dbhash.c_hash_step.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_dbhash.c_hash_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i8*, i32 }

@g = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @hash_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_step(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0, i32 0), align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = shl i32 %10, 3
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0, i32 0), align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = add i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = lshr i32 %19, 29
  %21 = add i32 %20, 1
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0, i32 0), align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = add i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %18, %2
  %27 = load i32, i32* %6, align 4
  %28 = lshr i32 %27, 3
  %29 = and i32 %28, 63
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %4, align 4
  %32 = add i32 %30, %31
  %33 = icmp ugt i32 %32, 63
  br i1 %33, label %34, label %62

34:                                               ; preds = %26
  %35 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0, i32 1), align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sub i32 64, %40
  store i32 %41, i32* %5, align 4
  %42 = call i32 @memcpy(i8* %38, i8* %39, i32 %41)
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0, i32 2), align 8
  %44 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0, i32 1), align 8
  %45 = call i32 @SHA1Transform(i32 %43, i8* %44)
  br label %46

46:                                               ; preds = %58, %34
  %47 = load i32, i32* %5, align 4
  %48 = add i32 %47, 63
  %49 = load i32, i32* %4, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0, i32 2), align 8
  %53 = load i8*, i8** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = call i32 @SHA1Transform(i32 %52, i8* %56)
  br label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %5, align 4
  %60 = add i32 %59, 64
  store i32 %60, i32* %5, align 4
  br label %46

61:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %63

62:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %61
  %64 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0, i32 1), align 8
  %65 = load i32, i32* %6, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8*, i8** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %5, align 4
  %74 = sub i32 %72, %73
  %75 = call i32 @memcpy(i8* %67, i8* %71, i32 %74)
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @SHA1Transform(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
