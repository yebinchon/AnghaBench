; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hpp/extr_hpp.c_FindDefine.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hpp/extr_hpp.c_FindDefine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_4__*, i32 }

@gpDefines = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"found a define: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @FindDefine(i8* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @strxlen(i8* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = icmp ne i8** %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8**, i8*** %5, align 8
  store i8* %16, i8** %17, align 8
  br label %18

18:                                               ; preds = %12, %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gpDefines, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %6, align 8
  br label %20

20:                                               ; preds = %44, %18
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %48

23:                                               ; preds = %20
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @trace(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %23
  %34 = load i8*, i8** %4, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @strncmp(i8* %34, i32 %37, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %3, align 8
  br label %49

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %23
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %6, align 8
  br label %20

48:                                               ; preds = %20
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %49

49:                                               ; preds = %48, %41
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %50
}

declare dso_local i32 @strxlen(i8*) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
