; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_dbhash.c_hash_finish.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_dbhash.c_hash_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32* }

@hash_finish.zEncode = internal constant [17 x i8] c"0123456789abcdef\00", align 16
@g = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"\80\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @hash_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_finish(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [8 x i8], align 1
  %5 = alloca [20 x i8], align 16
  %6 = alloca [41 x i8], align 16
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %29, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp ult i32 %8, 8
  br i1 %9, label %10, label %32

10:                                               ; preds = %7
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0, i32 0), align 8
  %12 = load i32, i32* %3, align 4
  %13 = icmp uge i32 %12, 4
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 0, i32 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %11, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 3
  %21 = sub i32 3, %20
  %22 = mul i32 %21, 8
  %23 = ashr i32 %18, %22
  %24 = and i32 %23, 255
  %25 = trunc i32 %24 to i8
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 %27
  store i8 %25, i8* %28, align 1
  br label %29

29:                                               ; preds = %10
  %30 = load i32, i32* %3, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %7

32:                                               ; preds = %7
  %33 = call i32 @hash_step(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %34

34:                                               ; preds = %40, %32
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0, i32 0), align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 504
  %39 = icmp ne i32 %38, 448
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 @hash_step(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %34

42:                                               ; preds = %34
  %43 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %44 = call i32 @hash_step(i8* %43, i32 8)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %65, %42
  %46 = load i32, i32* %3, align 4
  %47 = icmp ult i32 %46, 20
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  %49 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0, i32 1), align 8
  %50 = load i32, i32* %3, align 4
  %51 = lshr i32 %50, 2
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %3, align 4
  %56 = and i32 %55, 3
  %57 = sub i32 3, %56
  %58 = mul i32 %57, 8
  %59 = ashr i32 %54, %58
  %60 = and i32 %59, 255
  %61 = trunc i32 %60 to i8
  %62 = load i32, i32* %3, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 %63
  store i8 %61, i8* %64, align 1
  br label %65

65:                                               ; preds = %48
  %66 = load i32, i32* %3, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %45

68:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %101, %68
  %70 = load i32, i32* %3, align 4
  %71 = icmp ult i32 %70, 20
  br i1 %71, label %72, label %104

72:                                               ; preds = %69
  %73 = load i32, i32* %3, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = ashr i32 %77, 4
  %79 = and i32 %78, 15
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [17 x i8], [17 x i8]* @hash_finish.zEncode, i64 0, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = load i32, i32* %3, align 4
  %84 = mul i32 %83, 2
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [41 x i8], [41 x i8]* %6, i64 0, i64 %85
  store i8 %82, i8* %86, align 1
  %87 = load i32, i32* %3, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = and i32 %91, 15
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [17 x i8], [17 x i8]* @hash_finish.zEncode, i64 0, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = load i32, i32* %3, align 4
  %97 = mul i32 %96, 2
  %98 = add i32 %97, 1
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds [41 x i8], [41 x i8]* %6, i64 0, i64 %99
  store i8 %95, i8* %100, align 1
  br label %101

101:                                              ; preds = %72
  %102 = load i32, i32* %3, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %69

104:                                              ; preds = %69
  %105 = load i32, i32* %3, align 4
  %106 = mul i32 %105, 2
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [41 x i8], [41 x i8]* %6, i64 0, i64 %107
  store i8 0, i8* %108, align 1
  %109 = getelementptr inbounds [41 x i8], [41 x i8]* %6, i64 0, i64 0
  %110 = load i8*, i8** %2, align 8
  %111 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %109, i8* %110)
  ret void
}

declare dso_local i32 @hash_step(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
