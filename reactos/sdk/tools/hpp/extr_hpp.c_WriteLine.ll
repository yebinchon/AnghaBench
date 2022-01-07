; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hpp/extr_hpp.c_WriteLine.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hpp/extr_hpp.c_WriteLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Could not find variable '%.*s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WriteLine(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i8* @strchr(i8* %10, i8 signext 10)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %91

15:                                               ; preds = %2
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = ptrtoint i8* %16 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = add nsw i64 %20, 1
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load i8*, i8** %3, align 8
  store i8* %23, i8** %5, align 8
  br label %24

24:                                               ; preds = %90, %15
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %91

27:                                               ; preds = %24
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @strchr(i8* %28, i8 signext 36)
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %85

32:                                               ; preds = %27
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ult i8* %33, %34
  br i1 %35, label %36, label %85

36:                                               ; preds = %32
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = trunc i64 %42 to i32
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @fwrite(i8* %37, i32 1, i32 %43, i32* %44)
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = call %struct.TYPE_3__* @FindDefine(i8* %47, i8** %5)
  store %struct.TYPE_3__* %48, %struct.TYPE_3__** %9, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %50 = icmp ne %struct.TYPE_3__* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %36
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @fwrite(i8* %54, i32 1, i32 %57, i32* %58)
  br label %77

60:                                               ; preds = %36
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = call i32 @strxlen(i8* %62)
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %65, i8* %66)
  %68 = load i8*, i8** %7, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @fwrite(i8* %68, i32 1, i32 %74, i32* %75)
  br label %77

77:                                               ; preds = %60, %51
  %78 = load i8*, i8** %6, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = ptrtoint i8* %78 to i64
  %81 = ptrtoint i8* %79 to i64
  %82 = sub i64 %80, %81
  %83 = add nsw i64 %82, 1
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %8, align 4
  br label %90

85:                                               ; preds = %32, %27
  %86 = load i8*, i8** %5, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @fwrite(i8* %86, i32 1, i32 %87, i32* %88)
  br label %91

90:                                               ; preds = %77
  br label %24

91:                                               ; preds = %14, %85, %24
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_3__* @FindDefine(i8*, i8**) #1

declare dso_local i32 @strxlen(i8*) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
