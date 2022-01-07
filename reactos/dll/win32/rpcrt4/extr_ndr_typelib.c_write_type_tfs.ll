; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_write_type_tfs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_write_type_tfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"vt %d%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" (toplevel)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"unhandled kind %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"unhandled type %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i64*, %struct.TYPE_7__*, i64, i64)* @write_type_tfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_type_tfs(i32* %0, i8* %1, i64* %2, %struct.TYPE_7__* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64* %2, i64** %10, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %12, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %24 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @write_oleaut_tfs(i32 %27)
  store i64 %28, i64* %16, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = load i64, i64* %16, align 8
  store i64 %31, i64* %7, align 8
  br label %109

32:                                               ; preds = %6
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %88 [
    i32 129, label %36
    i32 130, label %46
    i32 128, label %54
  ]

36:                                               ; preds = %32
  %37 = load i32*, i32** %8, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i64*, i64** %10, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %13, align 8
  %45 = call i64 @write_pointer_tfs(i32* %37, i8* %38, i64* %39, i32 %42, i64 %43, i64 %44)
  store i64 %45, i64* %7, align 8
  br label %109

46:                                               ; preds = %32
  %47 = load i32*, i32** %8, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i64*, i64** %10, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @write_array_tfs(i32* %47, i8* %48, i64* %49, i32 %52)
  store i64 %53, i64* %7, align 8
  br label %109

54:                                               ; preds = %32
  %55 = load i32*, i32** %8, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ITypeInfo_GetRefTypeInfo(i32* %55, i32 %58, i32** %14)
  %60 = load i32*, i32** %14, align 8
  %61 = call i32 @ITypeInfo_GetTypeAttr(i32* %60, %struct.TYPE_8__** %15)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %71 [
    i32 131, label %65
  ]

65:                                               ; preds = %54
  %66 = load i32*, i32** %14, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load i64*, i64** %10, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %70 = call i64 @write_struct_tfs(i32* %66, i8* %67, i64* %68, %struct.TYPE_8__* %69)
  store i64 %70, i64* %16, align 8
  br label %82

71:                                               ; preds = %54
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load i64*, i64** %10, align 8
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %16, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = load i64*, i64** %10, align 8
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @WRITE_SHORT(i8* %78, i64 %80, i32 0)
  br label %82

82:                                               ; preds = %71, %65
  %83 = load i32*, i32** %14, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %85 = call i32 @ITypeInfo_ReleaseTypeAttr(i32* %83, %struct.TYPE_8__* %84)
  %86 = load i32*, i32** %14, align 8
  %87 = call i32 @ITypeInfo_Release(i32* %86)
  br label %107

88:                                               ; preds = %32
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @get_base_type(i32 %91)
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  %101 = load i64*, i64** %10, align 8
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %16, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = load i64*, i64** %10, align 8
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @WRITE_SHORT(i8* %103, i64 %105, i32 0)
  br label %107

107:                                              ; preds = %88, %82
  %108 = load i64, i64* %16, align 8
  store i64 %108, i64* %7, align 8
  br label %109

109:                                              ; preds = %107, %46, %36, %30
  %110 = load i64, i64* %7, align 8
  ret i64 %110
}

declare dso_local i32 @TRACE(i8*, i32, i8*) #1

declare dso_local i64 @write_oleaut_tfs(i32) #1

declare dso_local i64 @write_pointer_tfs(i32*, i8*, i64*, i32, i64, i64) #1

declare dso_local i64 @write_array_tfs(i32*, i8*, i64*, i32) #1

declare dso_local i32 @ITypeInfo_GetRefTypeInfo(i32*, i32, i32**) #1

declare dso_local i32 @ITypeInfo_GetTypeAttr(i32*, %struct.TYPE_8__**) #1

declare dso_local i64 @write_struct_tfs(i32*, i8*, i64*, %struct.TYPE_8__*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @WRITE_SHORT(i8*, i64, i32) #1

declare dso_local i32 @ITypeInfo_ReleaseTypeAttr(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @ITypeInfo_Release(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_base_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
