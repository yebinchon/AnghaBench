; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_luac.c_PrintConstant.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_luac.c_PrintConstant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@LUA_NUMBER_FMT = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"-0123456789\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c".0\00", align 1
@LUA_INTEGER_FMT = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"? type=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @PrintConstant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PrintConstant(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [100 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @ttype(i32* %13)
  switch i32 %14, label %50 [
    i32 131, label %15
    i32 133, label %17
    i32 130, label %24
    i32 129, label %41
    i32 128, label %46
    i32 132, label %46
  ]

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %54

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @bvalue(i32* %18)
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %23 = call i32 (i8*, ...) @printf(i8* %22)
  br label %54

24:                                               ; preds = %2
  %25 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %26 = load i8*, i8** @LUA_NUMBER_FMT, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @fltvalue(i32* %27)
  %29 = call i32 @sprintf(i8* %25, i8* %26, i32 %28)
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %30)
  %32 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %33 = call i64 @strspn(i8* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %34 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %24
  br label %54

41:                                               ; preds = %2
  %42 = load i8*, i8** @LUA_INTEGER_FMT, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @ivalue(i32* %43)
  %45 = call i32 (i8*, ...) @printf(i8* %42, i32 %44)
  br label %54

46:                                               ; preds = %2, %2
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @tsvalue(i32* %47)
  %49 = call i32 @PrintString(i32 %48)
  br label %54

50:                                               ; preds = %2
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @ttype(i32* %51)
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %46, %41, %40, %17, %15
  ret void
}

declare dso_local i32 @ttype(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @bvalue(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @fltvalue(i32*) #1

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i32 @ivalue(i32*) #1

declare dso_local i32 @PrintString(i32) #1

declare dso_local i32 @tsvalue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
