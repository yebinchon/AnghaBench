; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_write_iface_fs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_write_iface_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [23 x i8] c"Writing procedure %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Writing parameter %d.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*, i64*, i8*, i64*, i16*)* @write_iface_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_iface_fs(i32* %0, i32 %1, i32 %2, i8* %3, i64* %4, i8* %5, i64* %6, i16* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i16*, align 8
  %18 = alloca i16, align 2
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_5__*, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i64* %4, i64** %14, align 8
  store i8* %5, i8** %15, align 8
  store i64* %6, i64** %16, align 8
  store i16* %7, i16** %17, align 8
  store i32 3, i32* %19, align 4
  br label %23

23:                                               ; preds = %37, %8
  %24 = load i32, i32* %19, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load i16*, i16** %17, align 8
  %29 = icmp ne i16* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i16*, i16** %17, align 8
  %32 = load i32, i32* %19, align 4
  %33 = sub nsw i32 %32, 3
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i16, i16* %31, i64 %34
  store i16 -1, i16* %35, align 2
  br label %36

36:                                               ; preds = %30, %27
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %19, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %19, align 4
  br label %23

40:                                               ; preds = %23
  store i32 0, i32* %19, align 4
  br label %41

41:                                               ; preds = %132, %40
  %42 = load i32, i32* %19, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %135

45:                                               ; preds = %41
  %46 = load i32, i32* %19, align 4
  %47 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %19, align 4
  %50 = call i32 @ITypeInfo_GetFuncDesc(i32* %48, i32 %49, %struct.TYPE_5__** %21)
  store i32 %50, i32* %22, align 4
  %51 = load i32, i32* %22, align 4
  %52 = call i64 @FAILED(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %22, align 4
  store i32 %55, i32* %9, align 4
  br label %137

56:                                               ; preds = %45
  %57 = load i16*, i16** %17, align 8
  %58 = icmp ne i16* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load i64*, i64** %16, align 8
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i16
  %63 = load i16*, i16** %17, align 8
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %64, %65
  %67 = sub nsw i32 %66, 3
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i16, i16* %63, i64 %68
  store i16 %62, i16* %69, align 2
  br label %70

70:                                               ; preds = %59, %56
  %71 = load i32*, i32** %10, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %73 = load i32, i32* %19, align 4
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i8*, i8** %15, align 8
  %77 = load i64*, i64** %16, align 8
  %78 = call i32 @write_proc_func_header(i32* %71, %struct.TYPE_5__* %72, i32 %75, i8* %76, i64* %77)
  store i16 8, i16* %18, align 2
  store i32 0, i32* %20, align 4
  br label %79

79:                                               ; preds = %110, %70
  %80 = load i32, i32* %20, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %113

85:                                               ; preds = %79
  %86 = load i32, i32* %20, align 4
  %87 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load i32*, i32** %10, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = load i64*, i64** %14, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = load i64*, i64** %16, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %20, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* @FALSE, align 4
  %100 = call i32 @write_param_fs(i32* %88, i8* %89, i64* %90, i8* %91, i64* %92, i32* %98, i32 %99, i16* %18)
  store i32 %100, i32* %22, align 4
  %101 = load i32, i32* %22, align 4
  %102 = call i64 @FAILED(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %85
  %105 = load i32*, i32** %10, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %107 = call i32 @ITypeInfo_ReleaseFuncDesc(i32* %105, %struct.TYPE_5__* %106)
  %108 = load i32, i32* %22, align 4
  store i32 %108, i32* %9, align 4
  br label %137

109:                                              ; preds = %85
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %20, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %20, align 4
  br label %79

113:                                              ; preds = %79
  %114 = load i32*, i32** %10, align 8
  %115 = load i8*, i8** %13, align 8
  %116 = load i64*, i64** %14, align 8
  %117 = load i8*, i8** %15, align 8
  %118 = load i64*, i64** %16, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i32, i32* @TRUE, align 4
  %122 = call i32 @write_param_fs(i32* %114, i8* %115, i64* %116, i8* %117, i64* %118, i32* %120, i32 %121, i16* %18)
  store i32 %122, i32* %22, align 4
  %123 = load i32*, i32** %10, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %125 = call i32 @ITypeInfo_ReleaseFuncDesc(i32* %123, %struct.TYPE_5__* %124)
  %126 = load i32, i32* %22, align 4
  %127 = call i64 @FAILED(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %113
  %130 = load i32, i32* %22, align 4
  store i32 %130, i32* %9, align 4
  br label %137

131:                                              ; preds = %113
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %19, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %19, align 4
  br label %41

135:                                              ; preds = %41
  %136 = load i32, i32* @S_OK, align 4
  store i32 %136, i32* %9, align 4
  br label %137

137:                                              ; preds = %135, %129, %104, %54
  %138 = load i32, i32* %9, align 4
  ret i32 %138
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @ITypeInfo_GetFuncDesc(i32*, i32, %struct.TYPE_5__**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @write_proc_func_header(i32*, %struct.TYPE_5__*, i32, i8*, i64*) #1

declare dso_local i32 @write_param_fs(i32*, i8*, i64*, i8*, i64*, i32*, i32, i16*) #1

declare dso_local i32 @ITypeInfo_ReleaseFuncDesc(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
