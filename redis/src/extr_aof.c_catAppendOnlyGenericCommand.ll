; ModuleID = '/home/carl/AnghaBench/redis/src/extr_aof.c_catAppendOnlyGenericCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_aof.c_catAppendOnlyGenericCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @catAppendOnlyGenericCommand(i32 %0, i32 %1, %struct.TYPE_6__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %6, align 8
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  store i8 42, i8* %11, align 16
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ll2string(i8* %13, i32 31, i32 %14)
  %16 = add nsw i32 1, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %8, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 %19
  store i8 13, i8* %20, align 1
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 %23
  store i8 10, i8* %24, align 1
  %25 = load i32, i32* %4, align 4
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @sdscatlen(i32 %25, i8* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %74, %3
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %77

33:                                               ; preds = %29
  %34 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %34, i64 %36
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = call %struct.TYPE_6__* @getDecodedObject(%struct.TYPE_6__* %38)
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %10, align 8
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  store i8 36, i8* %40, align 16
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @sdslen(i8* %45)
  %47 = call i32 @ll2string(i8* %42, i32 31, i32 %46)
  %48 = add nsw i32 1, %47
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 %51
  store i8 13, i8* %52, align 1
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 %55
  store i8 10, i8* %56, align 1
  %57 = load i32, i32* %4, align 4
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @sdscatlen(i32 %57, i8* %58, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @sdslen(i8* %67)
  %69 = call i32 @sdscatlen(i32 %61, i8* %64, i32 %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @sdscatlen(i32 %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  store i32 %71, i32* %4, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %73 = call i32 @decrRefCount(%struct.TYPE_6__* %72)
  br label %74

74:                                               ; preds = %33
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %29

77:                                               ; preds = %29
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @ll2string(i8*, i32, i32) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @getDecodedObject(%struct.TYPE_6__*) #1

declare dso_local i32 @sdslen(i8*) #1

declare dso_local i32 @decrRefCount(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
