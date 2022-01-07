; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_dwarfdump.c_printrules.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_dwarfdump.c_printrules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"\09cannot unwind from pc 0x%lux: %r\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"\09pc=0x%lux cfa=%R ra=%R\00", align 1
@RuleSame = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c" r%d=%R\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printrules(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [10 x %struct.TYPE_6__], align 16
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds [10 x %struct.TYPE_6__], [10 x %struct.TYPE_6__]* %6, i64 0, i64 0
  %12 = getelementptr inbounds [10 x %struct.TYPE_6__], [10 x %struct.TYPE_6__]* %6, i64 0, i64 0
  %13 = call i32 @nelem(%struct.TYPE_6__* %12)
  %14 = call i64 @dwarfunwind(i32* %9, i32 %10, %struct.TYPE_6__* %7, %struct.TYPE_6__* %8, %struct.TYPE_6__* %11, i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* %4, align 4
  %21 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %20, %struct.TYPE_6__* %7, %struct.TYPE_6__* %8)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %42, %19
  %23 = load i32, i32* %5, align 4
  %24 = getelementptr inbounds [10 x %struct.TYPE_6__], [10 x %struct.TYPE_6__]* %6, i64 0, i64 0
  %25 = call i32 @nelem(%struct.TYPE_6__* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [10 x %struct.TYPE_6__], [10 x %struct.TYPE_6__]* %6, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @RuleSame, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [10 x %struct.TYPE_6__], [10 x %struct.TYPE_6__]* %6, i64 0, i64 %38
  %40 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %36, %struct.TYPE_6__* %39)
  br label %41

41:                                               ; preds = %35, %27
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %22

45:                                               ; preds = %22
  %46 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i64 @dwarfunwind(i32*, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @nelem(%struct.TYPE_6__*) #1

declare dso_local i32 @print(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
