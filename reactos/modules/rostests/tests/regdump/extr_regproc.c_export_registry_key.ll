; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/regdump/extr_regproc.c_export_registry_key.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/regdump/extr_regproc.c_export_registry_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_MAX_LEN = common dso_local global i32 0, align 4
@REG_VAL_BUF_SIZE = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Incorrect registry class specification in '%s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Can't export. Registry key '%s does not exist!\0A\00", align 1
@REG_CLASS_NUMBER = common dso_local global i32 0, align 4
@reg_class_keys = common dso_local global i64* null, align 8
@HKEY_CLASSES_ROOT = common dso_local global i64 0, align 8
@HKEY_CURRENT_USER = common dso_local global i64 0, align 8
@HKEY_CURRENT_CONFIG = common dso_local global i64 0, align 8
@reg_class_names = common dso_local global i64** null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @export_registry_key(i64* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %17 = load i32, i32* @KEY_MAX_LEN, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* @KEY_MAX_LEN, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @REG_VAL_BUF_SIZE, align 4
  store i32 %19, i32* %12, align 4
  store i32* null, i32** %13, align 8
  %20 = call i32 (...) @GetProcessHeap()
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 8
  %24 = trunc i64 %23 to i32
  %25 = call i64* @HeapAlloc(i32 %20, i32 0, i32 %24)
  store i64* %25, i64** %7, align 8
  %26 = call i32 (...) @GetProcessHeap()
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = trunc i64 %29 to i32
  %31 = call i64* @HeapAlloc(i32 %26, i32 0, i32 %30)
  store i64* %31, i64** %8, align 8
  %32 = call i32 (...) @GetProcessHeap()
  %33 = load i32, i32* %12, align 4
  %34 = call i64* @HeapAlloc(i32 %32, i32 0, i32 %33)
  store i64* %34, i64** %9, align 8
  %35 = load i64*, i64** %7, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %2
  %38 = load i64*, i64** %8, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i64*, i64** %9, align 8
  %42 = icmp ne i64* %41, null
  br label %43

43:                                               ; preds = %40, %37, %2
  %44 = phi i1 [ false, %37 ], [ false, %2 ], [ %42, %40 ]
  %45 = zext i1 %44 to i32
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i64*
  %48 = call i32 @CHECK_ENOUGH_MEMORY(i64* %47)
  %49 = load i64*, i64** %5, align 8
  %50 = icmp ne i64* %49, null
  br i1 %50, label %51, label %112

51:                                               ; preds = %43
  %52 = load i64*, i64** %5, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %112

56:                                               ; preds = %51
  %57 = load i64*, i64** %5, align 8
  %58 = call i32 @_tcslen(i64* %57)
  %59 = call i32 @REGPROC_resize_char_buffer(i64** %7, i32* %10, i32 %58)
  %60 = load i64*, i64** %7, align 8
  %61 = load i64*, i64** %5, align 8
  %62 = call i32 @_tcscpy(i64* %60, i64* %61)
  %63 = load i64*, i64** %5, align 8
  %64 = call i64 @getRegClass(i64* %63)
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %56
  %69 = call i32 @_T(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %70 = load i64*, i64** %5, align 8
  %71 = call i32 @_tprintf(i32 %69, i64* %70)
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %3, align 4
  br label %180

73:                                               ; preds = %56
  %74 = load i64*, i64** %5, align 8
  %75 = call i64* @getRegKeyName(i64* %74)
  store i64* %75, i64** %14, align 8
  %76 = load i64*, i64** %14, align 8
  %77 = call i32 @CHECK_ENOUGH_MEMORY(i64* %76)
  %78 = load i64*, i64** %14, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %73
  %83 = load i64*, i64** %4, align 8
  %84 = call i32* @REGPROC_open_export_file(i64* %83)
  store i32* %84, i32** %13, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @export_hkey(i32* %85, i64 %86, i64** %7, i32* %10, i64** %8, i32* %11, i64** %9, i32* %12)
  br label %108

88:                                               ; preds = %73
  %89 = load i64, i64* %6, align 8
  %90 = load i64*, i64** %14, align 8
  %91 = call i64 @RegOpenKey(i64 %89, i64* %90, i64* %15)
  %92 = load i64, i64* @ERROR_SUCCESS, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = load i64*, i64** %4, align 8
  %96 = call i32* @REGPROC_open_export_file(i64* %95)
  store i32* %96, i32** %13, align 8
  %97 = load i32*, i32** %13, align 8
  %98 = load i64, i64* %15, align 8
  %99 = call i32 @export_hkey(i32* %97, i64 %98, i64** %7, i32* %10, i64** %8, i32* %11, i64** %9, i32* %12)
  %100 = load i64, i64* %15, align 8
  %101 = call i32 @RegCloseKey(i64 %100)
  br label %107

102:                                              ; preds = %88
  %103 = call i32 @_T(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %104 = load i64*, i64** %5, align 8
  %105 = call i32 @_tprintf(i32 %103, i64* %104)
  %106 = call i32 (...) @REGPROC_print_error()
  br label %107

107:                                              ; preds = %102, %94
  br label %108

108:                                              ; preds = %107, %82
  %109 = call i32 (...) @GetProcessHeap()
  %110 = load i64*, i64** %14, align 8
  %111 = call i32 @HeapFree(i32 %109, i32 0, i64* %110)
  br label %163

112:                                              ; preds = %51, %43
  %113 = load i64*, i64** %4, align 8
  %114 = call i32* @REGPROC_open_export_file(i64* %113)
  store i32* %114, i32** %13, align 8
  store i32 0, i32* %16, align 4
  br label %115

115:                                              ; preds = %159, %112
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* @REG_CLASS_NUMBER, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %162

119:                                              ; preds = %115
  %120 = load i64*, i64** @reg_class_keys, align 8
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @HKEY_CLASSES_ROOT, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %158

127:                                              ; preds = %119
  %128 = load i64*, i64** @reg_class_keys, align 8
  %129 = load i32, i32* %16, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @HKEY_CURRENT_USER, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %158

135:                                              ; preds = %127
  %136 = load i64*, i64** @reg_class_keys, align 8
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @HKEY_CURRENT_CONFIG, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %158

143:                                              ; preds = %135
  %144 = load i64*, i64** %7, align 8
  %145 = load i64**, i64*** @reg_class_names, align 8
  %146 = load i32, i32* %16, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64*, i64** %145, i64 %147
  %149 = load i64*, i64** %148, align 8
  %150 = call i32 @_tcscpy(i64* %144, i64* %149)
  %151 = load i32*, i32** %13, align 8
  %152 = load i64*, i64** @reg_class_keys, align 8
  %153 = load i32, i32* %16, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @export_hkey(i32* %151, i64 %156, i64** %7, i32* %10, i64** %8, i32* %11, i64** %9, i32* %12)
  br label %158

158:                                              ; preds = %143, %135, %127, %119
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %16, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %16, align 4
  br label %115

162:                                              ; preds = %115
  br label %163

163:                                              ; preds = %162, %108
  %164 = load i32*, i32** %13, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32*, i32** %13, align 8
  %168 = call i32 @fclose(i32* %167)
  br label %169

169:                                              ; preds = %166, %163
  %170 = call i32 (...) @GetProcessHeap()
  %171 = load i64*, i64** %9, align 8
  %172 = call i32 @HeapFree(i32 %170, i32 0, i64* %171)
  %173 = call i32 (...) @GetProcessHeap()
  %174 = load i64*, i64** %8, align 8
  %175 = call i32 @HeapFree(i32 %173, i32 0, i64* %174)
  %176 = call i32 (...) @GetProcessHeap()
  %177 = load i64*, i64** %7, align 8
  %178 = call i32 @HeapFree(i32 %176, i32 0, i64* %177)
  %179 = load i32, i32* @TRUE, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %169, %68
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i64* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @CHECK_ENOUGH_MEMORY(i64*) #1

declare dso_local i32 @REGPROC_resize_char_buffer(i64**, i32*, i32) #1

declare dso_local i32 @_tcslen(i64*) #1

declare dso_local i32 @_tcscpy(i64*, i64*) #1

declare dso_local i64 @getRegClass(i64*) #1

declare dso_local i32 @_tprintf(i32, i64*) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i64* @getRegKeyName(i64*) #1

declare dso_local i32* @REGPROC_open_export_file(i64*) #1

declare dso_local i32 @export_hkey(i32*, i64, i64**, i32*, i64**, i32*, i64**, i32*) #1

declare dso_local i64 @RegOpenKey(i64, i64*, i64*) #1

declare dso_local i32 @RegCloseKey(i64) #1

declare dso_local i32 @REGPROC_print_error(...) #1

declare dso_local i32 @HeapFree(i32, i32, i64*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
