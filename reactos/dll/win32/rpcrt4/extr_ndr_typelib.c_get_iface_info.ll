; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_get_iface_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_get_iface_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i64 }
%struct.TYPE_8__ = type { i64 }

@TKIND_DISPATCH = common dso_local global i64 0, align 8
@SYS_WIN64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i64*, i64*, i32*)* @get_iface_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_iface_info(i32** %0, i64* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load i32**, i32*** %6, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @ITypeInfo_GetTypeAttr(i32* %20, %struct.TYPE_7__** %12)
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* %18, align 4
  %23 = call i64 @FAILED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %18, align 4
  store i32 %26, i32* %5, align 4
  br label %159

27:                                               ; preds = %4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %15, align 8
  %31 = load i32**, i32*** %6, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %34 = call i32 @ITypeInfo_ReleaseTypeAttr(i32* %32, %struct.TYPE_7__* %33)
  %35 = load i64, i64* %15, align 8
  %36 = load i64, i64* @TKIND_DISPATCH, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %27
  %39 = load i32**, i32*** %6, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @ITypeInfo_GetRefTypeOfImplType(i32* %40, i32 -1, i32* %16)
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  %43 = call i64 @FAILED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %18, align 4
  store i32 %46, i32* %5, align 4
  br label %159

47:                                               ; preds = %38
  %48 = load i32**, i32*** %6, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @ITypeInfo_GetRefTypeInfo(i32* %49, i32 %50, i32** %10)
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* %18, align 4
  %53 = call i64 @FAILED(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %18, align 4
  store i32 %56, i32* %5, align 4
  br label %159

57:                                               ; preds = %47
  %58 = load i32**, i32*** %6, align 8
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @ITypeInfo_Release(i32* %59)
  %61 = load i32*, i32** %10, align 8
  %62 = load i32**, i32*** %6, align 8
  store i32* %61, i32** %62, align 8
  br label %63

63:                                               ; preds = %57, %27
  %64 = load i32**, i32*** %6, align 8
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @ITypeInfo_GetContainingTypeLib(i32* %65, i32** %13, i32* null)
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = call i64 @FAILED(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %18, align 4
  store i32 %71, i32* %5, align 4
  br label %159

72:                                               ; preds = %63
  %73 = load i32*, i32** %13, align 8
  %74 = call i32 @ITypeLib_GetLibAttr(i32* %73, %struct.TYPE_8__** %14)
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* %18, align 4
  %76 = call i64 @FAILED(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32*, i32** %13, align 8
  %80 = call i32 @ITypeLib_Release(i32* %79)
  %81 = load i32, i32* %18, align 4
  store i32 %81, i32* %5, align 4
  br label %159

82:                                               ; preds = %72
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %17, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %88 = call i32 @ITypeLib_ReleaseTLibAttr(i32* %86, %struct.TYPE_8__* %87)
  %89 = load i32*, i32** %13, align 8
  %90 = call i32 @ITypeLib_Release(i32* %89)
  %91 = load i32**, i32*** %6, align 8
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @ITypeInfo_GetTypeAttr(i32* %92, %struct.TYPE_7__** %12)
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %18, align 4
  %95 = call i64 @FAILED(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %82
  %98 = load i32, i32* %18, align 4
  store i32 %98, i32* %5, align 4
  br label %159

99:                                               ; preds = %82
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load i64*, i64** %7, align 8
  store i64 %102, i64* %103, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i64, i64* %17, align 8
  %108 = load i64, i64* @SYS_WIN64, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 8, i32 4
  %112 = sdiv i32 %106, %111
  %113 = sext i32 %112 to i64
  %114 = load i64*, i64** %7, align 8
  %115 = load i64, i64* %114, align 8
  %116 = sub nsw i64 %113, %115
  %117 = load i64*, i64** %8, align 8
  store i64 %116, i64* %117, align 8
  %118 = load i32**, i32*** %6, align 8
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %121 = call i32 @ITypeInfo_ReleaseTypeAttr(i32* %119, %struct.TYPE_7__* %120)
  %122 = load i32**, i32*** %6, align 8
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @ITypeInfo_GetRefTypeOfImplType(i32* %123, i32 0, i32* %16)
  store i32 %124, i32* %18, align 4
  %125 = load i32, i32* %18, align 4
  %126 = call i64 @FAILED(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %99
  %129 = load i32, i32* %18, align 4
  store i32 %129, i32* %5, align 4
  br label %159

130:                                              ; preds = %99
  %131 = load i32**, i32*** %6, align 8
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %16, align 4
  %134 = call i32 @ITypeInfo_GetRefTypeInfo(i32* %132, i32 %133, i32** %11)
  store i32 %134, i32* %18, align 4
  %135 = load i32, i32* %18, align 4
  %136 = call i64 @FAILED(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %130
  %139 = load i32, i32* %18, align 4
  store i32 %139, i32* %5, align 4
  br label %159

140:                                              ; preds = %130
  %141 = load i32*, i32** %11, align 8
  %142 = call i32 @ITypeInfo_GetTypeAttr(i32* %141, %struct.TYPE_7__** %12)
  store i32 %142, i32* %18, align 4
  %143 = load i32, i32* %18, align 4
  %144 = call i64 @FAILED(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %140
  %147 = load i32, i32* %18, align 4
  store i32 %147, i32* %5, align 4
  br label %159

148:                                              ; preds = %140
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %9, align 8
  store i32 %151, i32* %152, align 4
  %153 = load i32*, i32** %11, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %155 = call i32 @ITypeInfo_ReleaseTypeAttr(i32* %153, %struct.TYPE_7__* %154)
  %156 = load i32*, i32** %11, align 8
  %157 = call i32 @ITypeInfo_Release(i32* %156)
  %158 = load i32, i32* %18, align 4
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %148, %146, %138, %128, %97, %78, %70, %55, %45, %25
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @ITypeInfo_GetTypeAttr(i32*, %struct.TYPE_7__**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ITypeInfo_ReleaseTypeAttr(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @ITypeInfo_GetRefTypeOfImplType(i32*, i32, i32*) #1

declare dso_local i32 @ITypeInfo_GetRefTypeInfo(i32*, i32, i32**) #1

declare dso_local i32 @ITypeInfo_Release(i32*) #1

declare dso_local i32 @ITypeInfo_GetContainingTypeLib(i32*, i32**, i32*) #1

declare dso_local i32 @ITypeLib_GetLibAttr(i32*, %struct.TYPE_8__**) #1

declare dso_local i32 @ITypeLib_Release(i32*) #1

declare dso_local i32 @ITypeLib_ReleaseTLibAttr(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
