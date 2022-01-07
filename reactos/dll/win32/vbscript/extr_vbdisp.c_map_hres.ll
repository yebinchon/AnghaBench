; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_vbdisp.c_map_hres.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_vbdisp.c_map_hres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FACILITY_VBS = common dso_local global i64 0, align 8
@VBSE_ACTION_NOT_SUPPORTED = common dso_local global i32 0, align 4
@VBSE_OLE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@VBSE_OLE_NO_PROP_OR_METHOD = common dso_local global i32 0, align 4
@VBSE_NAMED_PARAM_NOT_FOUND = common dso_local global i32 0, align 4
@VBSE_TYPE_MISMATCH = common dso_local global i32 0, align 4
@VBSE_NAMED_ARGS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@VBSE_INVALID_TYPELIB_VARIABLE = common dso_local global i32 0, align 4
@VBSE_OVERFLOW = common dso_local global i32 0, align 4
@VBSE_OUT_OF_BOUNDS = common dso_local global i32 0, align 4
@VBSE_LOCALE_SETTING_NOT_SUPPORTED = common dso_local global i32 0, align 4
@VBSE_ARRAY_LOCKED = common dso_local global i32 0, align 4
@VBSE_FUNC_ARITY_MISMATCH = common dso_local global i32 0, align 4
@VBSE_PARAMETER_NOT_OPTIONAL = common dso_local global i32 0, align 4
@VBSE_NOT_ENUM = common dso_local global i32 0, align 4
@VBSE_INVALID_DLL_FUNCTION_NAME = common dso_local global i32 0, align 4
@VBSE_IO_ERROR = common dso_local global i32 0, align 4
@VBSE_CANT_CREATE_TMP_FILE = common dso_local global i32 0, align 4
@VBSE_OLE_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@VBSE_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@VBSE_TOO_MANY_FILES = common dso_local global i32 0, align 4
@VBSE_PERMISSION_DENIED = common dso_local global i32 0, align 4
@VBSE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@VBSE_PATH_FILE_ACCESS = common dso_local global i32 0, align 4
@VBSE_FILE_ALREADY_EXISTS = common dso_local global i32 0, align 4
@VBSE_DISK_FULL = common dso_local global i32 0, align 4
@VBSE_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@VBSE_CANT_CREATE_OBJECT = common dso_local global i32 0, align 4
@VBSE_ILLEGAL_FUNC_CALL = common dso_local global i32 0, align 4
@VBSE_SERVER_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @map_hres(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @SUCCEEDED(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @HRESULT_FACILITY(i32 %8)
  %10 = load i64, i64* @FACILITY_VBS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %7, %1
  %13 = load i32, i32* %3, align 4
  store i32 %13, i32* %2, align 4
  br label %168

14:                                               ; preds = %7
  %15 = load i32, i32* %3, align 4
  switch i32 %15, label %166 [
    i32 156, label %16
    i32 157, label %19
    i32 162, label %22
    i32 169, label %25
    i32 165, label %28
    i32 163, label %31
    i32 160, label %34
    i32 168, label %37
    i32 170, label %40
    i32 166, label %43
    i32 172, label %46
    i32 161, label %49
    i32 173, label %52
    i32 171, label %55
    i32 164, label %58
    i32 167, label %61
    i32 131, label %64
    i32 128, label %67
    i32 129, label %70
    i32 130, label %73
    i32 132, label %76
    i32 145, label %79
    i32 137, label %82
    i32 134, label %85
    i32 149, label %88
    i32 144, label %91
    i32 139, label %94
    i32 147, label %97
    i32 133, label %100
    i32 136, label %103
    i32 135, label %106
    i32 141, label %109
    i32 146, label %112
    i32 140, label %115
    i32 142, label %118
    i32 143, label %121
    i32 138, label %124
    i32 148, label %127
    i32 151, label %130
    i32 152, label %133
    i32 153, label %136
    i32 154, label %139
    i32 175, label %142
    i32 176, label %145
    i32 177, label %148
    i32 159, label %151
    i32 155, label %154
    i32 158, label %157
    i32 150, label %160
    i32 174, label %163
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @VBSE_ACTION_NOT_SUPPORTED, align 4
  %18 = call i32 @MAKE_VBSERROR(i32 %17)
  store i32 %18, i32* %2, align 4
  br label %168

19:                                               ; preds = %14
  %20 = load i32, i32* @VBSE_OLE_NOT_SUPPORTED, align 4
  %21 = call i32 @MAKE_VBSERROR(i32 %20)
  store i32 %21, i32* %2, align 4
  br label %168

22:                                               ; preds = %14
  %23 = load i32, i32* @VBSE_OLE_NO_PROP_OR_METHOD, align 4
  %24 = call i32 @MAKE_VBSERROR(i32 %23)
  store i32 %24, i32* %2, align 4
  br label %168

25:                                               ; preds = %14
  %26 = load i32, i32* @VBSE_OLE_NO_PROP_OR_METHOD, align 4
  %27 = call i32 @MAKE_VBSERROR(i32 %26)
  store i32 %27, i32* %2, align 4
  br label %168

28:                                               ; preds = %14
  %29 = load i32, i32* @VBSE_NAMED_PARAM_NOT_FOUND, align 4
  %30 = call i32 @MAKE_VBSERROR(i32 %29)
  store i32 %30, i32* %2, align 4
  br label %168

31:                                               ; preds = %14
  %32 = load i32, i32* @VBSE_TYPE_MISMATCH, align 4
  %33 = call i32 @MAKE_VBSERROR(i32 %32)
  store i32 %33, i32* %2, align 4
  br label %168

34:                                               ; preds = %14
  %35 = load i32, i32* @VBSE_OLE_NO_PROP_OR_METHOD, align 4
  %36 = call i32 @MAKE_VBSERROR(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %168

37:                                               ; preds = %14
  %38 = load i32, i32* @VBSE_NAMED_ARGS_NOT_SUPPORTED, align 4
  %39 = call i32 @MAKE_VBSERROR(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %168

40:                                               ; preds = %14
  %41 = load i32, i32* @VBSE_INVALID_TYPELIB_VARIABLE, align 4
  %42 = call i32 @MAKE_VBSERROR(i32 %41)
  store i32 %42, i32* %2, align 4
  br label %168

43:                                               ; preds = %14
  %44 = load i32, i32* @VBSE_OVERFLOW, align 4
  %45 = call i32 @MAKE_VBSERROR(i32 %44)
  store i32 %45, i32* %2, align 4
  br label %168

46:                                               ; preds = %14
  %47 = load i32, i32* @VBSE_OUT_OF_BOUNDS, align 4
  %48 = call i32 @MAKE_VBSERROR(i32 %47)
  store i32 %48, i32* %2, align 4
  br label %168

49:                                               ; preds = %14
  %50 = load i32, i32* @VBSE_LOCALE_SETTING_NOT_SUPPORTED, align 4
  %51 = call i32 @MAKE_VBSERROR(i32 %50)
  store i32 %51, i32* %2, align 4
  br label %168

52:                                               ; preds = %14
  %53 = load i32, i32* @VBSE_ARRAY_LOCKED, align 4
  %54 = call i32 @MAKE_VBSERROR(i32 %53)
  store i32 %54, i32* %2, align 4
  br label %168

55:                                               ; preds = %14
  %56 = load i32, i32* @VBSE_FUNC_ARITY_MISMATCH, align 4
  %57 = call i32 @MAKE_VBSERROR(i32 %56)
  store i32 %57, i32* %2, align 4
  br label %168

58:                                               ; preds = %14
  %59 = load i32, i32* @VBSE_PARAMETER_NOT_OPTIONAL, align 4
  %60 = call i32 @MAKE_VBSERROR(i32 %59)
  store i32 %60, i32* %2, align 4
  br label %168

61:                                               ; preds = %14
  %62 = load i32, i32* @VBSE_NOT_ENUM, align 4
  %63 = call i32 @MAKE_VBSERROR(i32 %62)
  store i32 %63, i32* %2, align 4
  br label %168

64:                                               ; preds = %14
  %65 = load i32, i32* @VBSE_INVALID_DLL_FUNCTION_NAME, align 4
  %66 = call i32 @MAKE_VBSERROR(i32 %65)
  store i32 %66, i32* %2, align 4
  br label %168

67:                                               ; preds = %14
  %68 = load i32, i32* @VBSE_TYPE_MISMATCH, align 4
  %69 = call i32 @MAKE_VBSERROR(i32 %68)
  store i32 %69, i32* %2, align 4
  br label %168

70:                                               ; preds = %14
  %71 = load i32, i32* @VBSE_OUT_OF_BOUNDS, align 4
  %72 = call i32 @MAKE_VBSERROR(i32 %71)
  store i32 %72, i32* %2, align 4
  br label %168

73:                                               ; preds = %14
  %74 = load i32, i32* @VBSE_IO_ERROR, align 4
  %75 = call i32 @MAKE_VBSERROR(i32 %74)
  store i32 %75, i32* %2, align 4
  br label %168

76:                                               ; preds = %14
  %77 = load i32, i32* @VBSE_CANT_CREATE_TMP_FILE, align 4
  %78 = call i32 @MAKE_VBSERROR(i32 %77)
  store i32 %78, i32* %2, align 4
  br label %168

79:                                               ; preds = %14
  %80 = load i32, i32* @VBSE_OLE_FILE_NOT_FOUND, align 4
  %81 = call i32 @MAKE_VBSERROR(i32 %80)
  store i32 %81, i32* %2, align 4
  br label %168

82:                                               ; preds = %14
  %83 = load i32, i32* @VBSE_PATH_NOT_FOUND, align 4
  %84 = call i32 @MAKE_VBSERROR(i32 %83)
  store i32 %84, i32* %2, align 4
  br label %168

85:                                               ; preds = %14
  %86 = load i32, i32* @VBSE_TOO_MANY_FILES, align 4
  %87 = call i32 @MAKE_VBSERROR(i32 %86)
  store i32 %87, i32* %2, align 4
  br label %168

88:                                               ; preds = %14
  %89 = load i32, i32* @VBSE_PERMISSION_DENIED, align 4
  %90 = call i32 @MAKE_VBSERROR(i32 %89)
  store i32 %90, i32* %2, align 4
  br label %168

91:                                               ; preds = %14
  %92 = load i32, i32* @VBSE_OUT_OF_MEMORY, align 4
  %93 = call i32 @MAKE_VBSERROR(i32 %92)
  store i32 %93, i32* %2, align 4
  br label %168

94:                                               ; preds = %14
  %95 = load i32, i32* @VBSE_TOO_MANY_FILES, align 4
  %96 = call i32 @MAKE_VBSERROR(i32 %95)
  store i32 %96, i32* %2, align 4
  br label %168

97:                                               ; preds = %14
  %98 = load i32, i32* @VBSE_PERMISSION_DENIED, align 4
  %99 = call i32 @MAKE_VBSERROR(i32 %98)
  store i32 %99, i32* %2, align 4
  br label %168

100:                                              ; preds = %14
  %101 = load i32, i32* @VBSE_IO_ERROR, align 4
  %102 = call i32 @MAKE_VBSERROR(i32 %101)
  store i32 %102, i32* %2, align 4
  br label %168

103:                                              ; preds = %14
  %104 = load i32, i32* @VBSE_IO_ERROR, align 4
  %105 = call i32 @MAKE_VBSERROR(i32 %104)
  store i32 %105, i32* %2, align 4
  br label %168

106:                                              ; preds = %14
  %107 = load i32, i32* @VBSE_PATH_FILE_ACCESS, align 4
  %108 = call i32 @MAKE_VBSERROR(i32 %107)
  store i32 %108, i32* %2, align 4
  br label %168

109:                                              ; preds = %14
  %110 = load i32, i32* @VBSE_PERMISSION_DENIED, align 4
  %111 = call i32 @MAKE_VBSERROR(i32 %110)
  store i32 %111, i32* %2, align 4
  br label %168

112:                                              ; preds = %14
  %113 = load i32, i32* @VBSE_FILE_ALREADY_EXISTS, align 4
  %114 = call i32 @MAKE_VBSERROR(i32 %113)
  store i32 %114, i32* %2, align 4
  br label %168

115:                                              ; preds = %14
  %116 = load i32, i32* @VBSE_DISK_FULL, align 4
  %117 = call i32 @MAKE_VBSERROR(i32 %116)
  store i32 %117, i32* %2, align 4
  br label %168

118:                                              ; preds = %14
  %119 = load i32, i32* @VBSE_FILE_NOT_FOUND, align 4
  %120 = call i32 @MAKE_VBSERROR(i32 %119)
  store i32 %120, i32* %2, align 4
  br label %168

121:                                              ; preds = %14
  %122 = load i32, i32* @VBSE_PERMISSION_DENIED, align 4
  %123 = call i32 @MAKE_VBSERROR(i32 %122)
  store i32 %123, i32* %2, align 4
  br label %168

124:                                              ; preds = %14
  %125 = load i32, i32* @VBSE_PERMISSION_DENIED, align 4
  %126 = call i32 @MAKE_VBSERROR(i32 %125)
  store i32 %126, i32* %2, align 4
  br label %168

127:                                              ; preds = %14
  %128 = load i32, i32* @VBSE_IO_ERROR, align 4
  %129 = call i32 @MAKE_VBSERROR(i32 %128)
  store i32 %129, i32* %2, align 4
  br label %168

130:                                              ; preds = %14
  %131 = load i32, i32* @VBSE_CANT_CREATE_OBJECT, align 4
  %132 = call i32 @MAKE_VBSERROR(i32 %131)
  store i32 %132, i32* %2, align 4
  br label %168

133:                                              ; preds = %14
  %134 = load i32, i32* @VBSE_CANT_CREATE_OBJECT, align 4
  %135 = call i32 @MAKE_VBSERROR(i32 %134)
  store i32 %135, i32* %2, align 4
  br label %168

136:                                              ; preds = %14
  %137 = load i32, i32* @VBSE_OLE_FILE_NOT_FOUND, align 4
  %138 = call i32 @MAKE_VBSERROR(i32 %137)
  store i32 %138, i32* %2, align 4
  br label %168

139:                                              ; preds = %14
  %140 = load i32, i32* @VBSE_OLE_FILE_NOT_FOUND, align 4
  %141 = call i32 @MAKE_VBSERROR(i32 %140)
  store i32 %141, i32* %2, align 4
  br label %168

142:                                              ; preds = %14
  %143 = load i32, i32* @VBSE_CANT_CREATE_OBJECT, align 4
  %144 = call i32 @MAKE_VBSERROR(i32 %143)
  store i32 %144, i32* %2, align 4
  br label %168

145:                                              ; preds = %14
  %146 = load i32, i32* @VBSE_CANT_CREATE_OBJECT, align 4
  %147 = call i32 @MAKE_VBSERROR(i32 %146)
  store i32 %147, i32* %2, align 4
  br label %168

148:                                              ; preds = %14
  %149 = load i32, i32* @VBSE_CANT_CREATE_OBJECT, align 4
  %150 = call i32 @MAKE_VBSERROR(i32 %149)
  store i32 %150, i32* %2, align 4
  br label %168

151:                                              ; preds = %14
  %152 = load i32, i32* @VBSE_PERMISSION_DENIED, align 4
  %153 = call i32 @MAKE_VBSERROR(i32 %152)
  store i32 %153, i32* %2, align 4
  br label %168

154:                                              ; preds = %14
  %155 = load i32, i32* @VBSE_OUT_OF_MEMORY, align 4
  %156 = call i32 @MAKE_VBSERROR(i32 %155)
  store i32 %156, i32* %2, align 4
  br label %168

157:                                              ; preds = %14
  %158 = load i32, i32* @VBSE_ILLEGAL_FUNC_CALL, align 4
  %159 = call i32 @MAKE_VBSERROR(i32 %158)
  store i32 %159, i32* %2, align 4
  br label %168

160:                                              ; preds = %14
  %161 = load i32, i32* @VBSE_SERVER_NOT_FOUND, align 4
  %162 = call i32 @MAKE_VBSERROR(i32 %161)
  store i32 %162, i32* %2, align 4
  br label %168

163:                                              ; preds = %14
  %164 = load i32, i32* @VBSE_CANT_CREATE_OBJECT, align 4
  %165 = call i32 @MAKE_VBSERROR(i32 %164)
  store i32 %165, i32* %2, align 4
  br label %168

166:                                              ; preds = %14
  %167 = load i32, i32* %3, align 4
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %166, %163, %160, %157, %154, %151, %148, %145, %142, %139, %136, %133, %130, %127, %124, %121, %118, %115, %112, %109, %106, %103, %100, %97, %94, %91, %88, %85, %82, %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %12
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i64 @HRESULT_FACILITY(i32) #1

declare dso_local i32 @MAKE_VBSERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
