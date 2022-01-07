; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_type_memsize.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_type_memsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"unhandled type %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*)* @type_memsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_memsize(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %70 [
    i32 144, label %14
    i32 135, label %14
    i32 143, label %15
    i32 134, label %15
    i32 151, label %15
    i32 142, label %16
    i32 133, label %16
    i32 138, label %16
    i32 140, label %16
    i32 131, label %16
    i32 146, label %16
    i32 145, label %16
    i32 141, label %17
    i32 132, label %17
    i32 137, label %17
    i32 148, label %17
    i32 150, label %18
    i32 136, label %18
    i32 139, label %18
    i32 130, label %18
    i32 147, label %18
    i32 128, label %19
    i32 149, label %20
    i32 129, label %53
  ]

14:                                               ; preds = %2, %2
  store i32 1, i32* %3, align 4
  br label %75

15:                                               ; preds = %2, %2, %2
  store i32 2, i32* %3, align 4
  br label %75

16:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  store i32 4, i32* %3, align 4
  br label %75

17:                                               ; preds = %2, %2, %2, %2
  store i32 8, i32* %3, align 4
  br label %75

18:                                               ; preds = %2, %2, %2, %2, %2
  store i32 8, i32* %3, align 4
  br label %75

19:                                               ; preds = %2
  store i32 4, i32* %3, align 4
  br label %75

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = call i32 @type_memsize(i32* %21, %struct.TYPE_10__* %25)
  store i32 %26, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %48, %20
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ult i32 %28, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %27
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = mul i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %7, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %27

51:                                               ; preds = %27
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %75

53:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ITypeInfo_GetRefTypeInfo(i32* %54, i32 %57, i32** %9)
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @ITypeInfo_GetTypeAttr(i32* %59, %struct.TYPE_11__** %10)
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %8, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %66 = call i32 @ITypeInfo_ReleaseTypeAttr(i32* %64, %struct.TYPE_11__* %65)
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @ITypeInfo_Release(i32* %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %75

70:                                               ; preds = %2
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %53, %51, %19, %18, %17, %16, %15, %14
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @ITypeInfo_GetRefTypeInfo(i32*, i32, i32**) #1

declare dso_local i32 @ITypeInfo_GetTypeAttr(i32*, %struct.TYPE_11__**) #1

declare dso_local i32 @ITypeInfo_ReleaseTypeAttr(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @ITypeInfo_Release(i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
