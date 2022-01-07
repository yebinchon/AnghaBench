; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_get_predefined_entity.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_get_predefined_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32 }

@get_predefined_entity.entltW = internal constant [2 x i8] c"lt", align 1
@get_predefined_entity.entgtW = internal constant [2 x i8] c"gt", align 1
@get_predefined_entity.entampW = internal constant [3 x i8] c"amp", align 1
@get_predefined_entity.entaposW = internal constant [4 x i8] c"apos", align 1
@get_predefined_entity.entquotW = internal constant [4 x i8] c"quot", align 1
@get_predefined_entity.lt = internal constant %struct.TYPE_6__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @get_predefined_entity.entltW, i32 0, i32 0), i32 2 }, align 8
@get_predefined_entity.gt = internal constant %struct.TYPE_6__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @get_predefined_entity.entgtW, i32 0, i32 0), i32 2 }, align 8
@get_predefined_entity.amp = internal constant %struct.TYPE_6__ { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @get_predefined_entity.entampW, i32 0, i32 0), i32 3 }, align 8
@get_predefined_entity.apos = internal constant %struct.TYPE_6__ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @get_predefined_entity.entaposW, i32 0, i32 0), i32 4 }, align 8
@get_predefined_entity.quot = internal constant %struct.TYPE_6__ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @get_predefined_entity.entquotW, i32 0, i32 0), i32 4 }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32*, %struct.TYPE_6__*)* @get_predefined_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @get_predefined_entity(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = call i8* @reader_get_strptr(i32* %7, %struct.TYPE_6__* %8)
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  switch i32 %12, label %48 [
    i32 108, label %13
    i32 103, label %20
    i32 97, label %27
    i32 113, label %41
  ]

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = call i32 @strval_eq(i32* %14, %struct.TYPE_6__* %15, %struct.TYPE_6__* @get_predefined_entity.lt)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i8 60, i8* %3, align 1
  br label %50

19:                                               ; preds = %13
  br label %49

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = call i32 @strval_eq(i32* %21, %struct.TYPE_6__* %22, %struct.TYPE_6__* @get_predefined_entity.gt)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i8 62, i8* %3, align 1
  br label %50

26:                                               ; preds = %20
  br label %49

27:                                               ; preds = %2
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = call i32 @strval_eq(i32* %28, %struct.TYPE_6__* %29, %struct.TYPE_6__* @get_predefined_entity.amp)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i8 38, i8* %3, align 1
  br label %50

33:                                               ; preds = %27
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = call i32 @strval_eq(i32* %34, %struct.TYPE_6__* %35, %struct.TYPE_6__* @get_predefined_entity.apos)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i8 39, i8* %3, align 1
  br label %50

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39
  br label %49

41:                                               ; preds = %2
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = call i32 @strval_eq(i32* %42, %struct.TYPE_6__* %43, %struct.TYPE_6__* @get_predefined_entity.quot)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i8 34, i8* %3, align 1
  br label %50

47:                                               ; preds = %41
  br label %49

48:                                               ; preds = %2
  br label %49

49:                                               ; preds = %48, %47, %40, %26, %19
  store i8 0, i8* %3, align 1
  br label %50

50:                                               ; preds = %49, %46, %38, %32, %25, %18
  %51 = load i8, i8* %3, align 1
  ret i8 %51
}

declare dso_local i8* @reader_get_strptr(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @strval_eq(i32*, %struct.TYPE_6__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
