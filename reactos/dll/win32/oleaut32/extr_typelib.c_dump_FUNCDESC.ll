; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_dump_FUNCDESC.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_dump_FUNCDESC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"memid is %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Param %d:\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"\09funckind: %d (\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"virtual\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"pure virtual\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"nonvirtual\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"dispatch\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c")\0A\09invkind: %d (\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"property get\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"property put\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"property put ref\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c")\0A\09callconv: %d (\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"cdecl\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"pascal\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"stdcall\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"syscall\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c")\0A\09oVft: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"\09cParamsOpt: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"\09wFlags: %x\0A\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"\09elemdescFunc (return value type):\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @dump_FUNCDESC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_FUNCDESC(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 9
  %6 = load i32, i32* %5, align 8
  %7 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %24, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 8
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call i32 @dump_ELEMDESC(i32* %22)
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %8

27:                                               ; preds = %8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %45 [
    i32 132, label %35
    i32 134, label %37
    i32 135, label %39
    i32 133, label %41
    i32 136, label %43
  ]

35:                                               ; preds = %27
  %36 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %47

37:                                               ; preds = %27
  %38 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %47

39:                                               ; preds = %27
  %40 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %47

41:                                               ; preds = %27
  %42 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %47

43:                                               ; preds = %27
  %44 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %47

45:                                               ; preds = %27
  %46 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %43, %41, %39, %37, %35
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %50)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %63 [
    i32 131, label %55
    i32 130, label %57
    i32 129, label %59
    i32 128, label %61
  ]

55:                                               ; preds = %47
  %56 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %63

57:                                               ; preds = %47
  %58 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  br label %63

59:                                               ; preds = %47
  %60 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  br label %63

61:                                               ; preds = %47
  %62 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  br label %63

63:                                               ; preds = %47, %61, %59, %57, %55
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %66)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %79 [
    i32 140, label %71
    i32 139, label %73
    i32 138, label %75
    i32 137, label %77
  ]

71:                                               ; preds = %63
  %72 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  br label %80

73:                                               ; preds = %63
  %74 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  br label %80

75:                                               ; preds = %63
  %76 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  br label %80

77:                                               ; preds = %63
  %78 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  br label %80

79:                                               ; preds = %63
  br label %80

80:                                               ; preds = %79, %77, %75, %73, %71
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i32 %83)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i32 %87)
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i32 %91)
  %93 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0))
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 4
  %96 = call i32 @dump_ELEMDESC(i32* %95)
  ret void
}

declare dso_local i32 @MESSAGE(i8*, ...) #1

declare dso_local i32 @dump_ELEMDESC(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
