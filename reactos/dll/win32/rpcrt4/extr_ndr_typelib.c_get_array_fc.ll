; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_get_array_fc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_get_array_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64 }

@FC_LGFARRAY = common dso_local global i8 0, align 1
@VT_USERDEFINED = common dso_local global i64 0, align 8
@TKIND_ENUM = common dso_local global i64 0, align 8
@TKIND_RECORD = common dso_local global i64 0, align 8
@FC_STRUCT = common dso_local global i64 0, align 8
@FC_BOGUS_ARRAY = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32*, %struct.TYPE_7__*)* @get_array_fc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @get_array_fc(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @get_base_type(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i8, i8* @FC_LGFARRAY, align 1
  store i8 %15, i8* %3, align 1
  br label %63

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VT_USERDEFINED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %61

22:                                               ; preds = %16
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ITypeInfo_GetRefTypeInfo(i32* %23, i32 %26, i32** %6)
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @ITypeInfo_GetTypeAttr(i32* %28, %struct.TYPE_8__** %7)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TKIND_ENUM, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load i8, i8* @FC_LGFARRAY, align 1
  store i8 %36, i8* %8, align 1
  br label %54

37:                                               ; preds = %22
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TKIND_RECORD, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = call i64 @get_struct_fc(i32* %44, %struct.TYPE_8__* %45)
  %47 = load i64, i64* @FC_STRUCT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i8, i8* @FC_LGFARRAY, align 1
  store i8 %50, i8* %8, align 1
  br label %53

51:                                               ; preds = %43, %37
  %52 = load i8, i8* @FC_BOGUS_ARRAY, align 1
  store i8 %52, i8* %8, align 1
  br label %53

53:                                               ; preds = %51, %49
  br label %54

54:                                               ; preds = %53, %35
  %55 = load i32*, i32** %6, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = call i32 @ITypeInfo_ReleaseTypeAttr(i32* %55, %struct.TYPE_8__* %56)
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @ITypeInfo_Release(i32* %58)
  %60 = load i8, i8* %8, align 1
  store i8 %60, i8* %3, align 1
  br label %63

61:                                               ; preds = %16
  %62 = load i8, i8* @FC_BOGUS_ARRAY, align 1
  store i8 %62, i8* %3, align 1
  br label %63

63:                                               ; preds = %61, %54, %14
  %64 = load i8, i8* %3, align 1
  ret i8 %64
}

declare dso_local i64 @get_base_type(i64) #1

declare dso_local i32 @ITypeInfo_GetRefTypeInfo(i32*, i32, i32**) #1

declare dso_local i32 @ITypeInfo_GetTypeAttr(i32*, %struct.TYPE_8__**) #1

declare dso_local i64 @get_struct_fc(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @ITypeInfo_ReleaseTypeAttr(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @ITypeInfo_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
