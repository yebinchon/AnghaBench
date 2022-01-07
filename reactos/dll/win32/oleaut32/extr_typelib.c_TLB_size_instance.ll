; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_TLB_size_instance.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_TLB_size_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Unsized VT: 0x%x\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@SYS_WIN32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_9__*, i32*, i32*)* @TLB_size_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TLB_size_instance(i32* %0, i32 %1, %struct.TYPE_9__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @get_ptr_size(i32 %16)
  store i32 %17, i32* %14, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %101 [
    i32 128, label %21
    i32 147, label %23
    i32 136, label %23
    i32 146, label %25
    i32 156, label %25
    i32 135, label %25
    i32 145, label %27
    i32 139, label %27
    i32 149, label %27
    i32 134, label %27
    i32 143, label %27
    i32 132, label %27
    i32 148, label %27
    i32 138, label %29
    i32 144, label %29
    i32 133, label %29
    i32 155, label %31
    i32 150, label %31
    i32 131, label %31
    i32 140, label %31
    i32 137, label %31
    i32 142, label %31
    i32 141, label %31
    i32 152, label %34
    i32 129, label %36
    i32 151, label %38
    i32 153, label %40
    i32 154, label %42
    i32 130, label %92
  ]

21:                                               ; preds = %5
  %22 = load i32*, i32** %10, align 8
  store i32 0, i32* %22, align 4
  br label %107

23:                                               ; preds = %5, %5
  %24 = load i32*, i32** %10, align 8
  store i32 1, i32* %24, align 4
  br label %107

25:                                               ; preds = %5, %5, %5
  %26 = load i32*, i32** %10, align 8
  store i32 2, i32* %26, align 4
  br label %107

27:                                               ; preds = %5, %5, %5, %5, %5, %5, %5
  %28 = load i32*, i32** %10, align 8
  store i32 4, i32* %28, align 4
  br label %107

29:                                               ; preds = %5, %5, %5
  %30 = load i32*, i32** %10, align 8
  store i32 8, i32* %30, align 4
  br label %107

31:                                               ; preds = %5, %5, %5, %5, %5, %5, %5
  %32 = load i32, i32* %14, align 4
  %33 = load i32*, i32** %10, align 8
  store i32 %32, i32* %33, align 4
  br label %107

34:                                               ; preds = %5
  %35 = load i32*, i32** %10, align 8
  store i32 4, i32* %35, align 4
  br label %107

36:                                               ; preds = %5
  %37 = load i32*, i32** %10, align 8
  store i32 4, i32* %37, align 4
  br label %107

38:                                               ; preds = %5
  %39 = load i32*, i32** %10, align 8
  store i32 4, i32* %39, align 4
  br label %107

40:                                               ; preds = %5
  %41 = load i32*, i32** %10, align 8
  store i32 4, i32* %41, align 4
  br label %107

42:                                               ; preds = %5
  %43 = load i32*, i32** %10, align 8
  store i32 0, i32* %43, align 4
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %68, %42
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %45, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %44
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %64
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %53
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %44

71:                                               ; preds = %44
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32*, i32** %11, align 8
  %80 = call i32 @TLB_size_instance(i32* %72, i32 %73, %struct.TYPE_9__* %78, i32* %13, i32* %79)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @FAILED(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %71
  %85 = load i32, i32* %15, align 4
  store i32 %85, i32* %6, align 4
  br label %123

86:                                               ; preds = %71
  %87 = load i32, i32* %13, align 4
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %89, %87
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* @S_OK, align 4
  store i32 %91, i32* %6, align 4
  br label %123

92:                                               ; preds = %5
  %93 = load i32*, i32** %7, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = call i32 @TLB_get_size_from_hreftype(i32* %93, i32 %97, i32* %98, i32* %99)
  store i32 %100, i32* %6, align 4
  br label %123

101:                                              ; preds = %5
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @FIXME(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* @E_FAIL, align 4
  store i32 %106, i32* %6, align 4
  br label %123

107:                                              ; preds = %40, %38, %36, %34, %31, %29, %27, %25, %23, %21
  %108 = load i32*, i32** %11, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %121

110:                                              ; preds = %107
  %111 = load i32*, i32** %10, align 8
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %112, 4
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i32*, i32** %10, align 8
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %11, align 8
  store i32 %116, i32* %117, align 4
  br label %120

118:                                              ; preds = %110
  %119 = load i32*, i32** %11, align 8
  store i32 4, i32* %119, align 4
  br label %120

120:                                              ; preds = %118, %114
  br label %121

121:                                              ; preds = %120, %107
  %122 = load i32, i32* @S_OK, align 4
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %121, %101, %92, %86, %84
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i32 @get_ptr_size(i32) #1

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @TLB_get_size_from_hreftype(i32*, i32, i32*, i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
