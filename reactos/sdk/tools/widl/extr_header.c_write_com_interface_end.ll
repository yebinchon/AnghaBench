; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_header.c_write_com_interface_end.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_header.c_write_com_interface_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, i8*, i32, i32 }

@ATTR_DISPINTERFACE = common dso_local global i32 0, align 4
@ATTR_UUID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"DIID\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"IID\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"#if defined(__cplusplus) && !defined(CINTERFACE)\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"} /* extern \22C\22 */\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"MIDL_INTERFACE(\22%s\22)\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"interface \00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"%s : public %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"BEGIN_INTERFACE\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"END_INTERFACE\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"};\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"extern \22C\22 {\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"#else\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"typedef struct %sVtbl {\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"END_INTERFACE\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"} %sVtbl;\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"interface %s {\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"    CONST_VTBL %sVtbl* lpVtbl;\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"#ifdef COBJMACROS\0A\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"#ifndef WIDL_C_INLINE_WRAPPERS\0A\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@winrt_mode = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [43 x i8] c"#endif  /* __%s_%sINTERFACE_DEFINED__ */\0A\0A\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"DISP\00", align 1
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_15__*)* @write_com_interface_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_com_interface_end(i32* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ATTR_DISPINTERFACE, align 4
  %12 = call i32 @is_attr(i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ATTR_UUID, align 4
  %17 = call i32* @get_attrp(i32 %15, i32 %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @write_guid(i32* %21, i8* %25, i8* %28, i32* %29)
  br label %31

31:                                               ; preds = %20, %2
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @is_global_namespace(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %31
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 (i32*, i32, i8*, ...) @write_line(i32* %40, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @write_namespace_start(i32* %42, i32 %45)
  br label %47

47:                                               ; preds = %39, %31
  %48 = load i32*, i32** %6, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32*, i32** %3, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i8* @uuid_string(i32* %52)
  %54 = call i32 (i32*, i32, i8*, ...) @write_line(i32* %51, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %53)
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @indent(i32* %55, i32 0)
  br label %62

57:                                               ; preds = %47
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @indent(i32* %58, i32 0)
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 (i32*, i8*, ...) @fprintf(i32* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %62

62:                                               ; preds = %57, %50
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %64 = call %struct.TYPE_15__* @type_iface_get_inherit(%struct.TYPE_15__* %63)
  %65 = icmp ne %struct.TYPE_15__* %64, null
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load i32*, i32** %3, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = call %struct.TYPE_15__* @type_iface_get_inherit(%struct.TYPE_15__* %71)
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i32*, i8*, ...) @fprintf(i32* %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %70, i8* %74)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 (i32*, i32, i8*, ...) @write_line(i32* %76, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %88

78:                                               ; preds = %62
  %79 = load i32*, i32** %3, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 (i32*, i8*, ...) @fprintf(i32* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %82)
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 (i32*, i32, i8*, ...) @write_line(i32* %84, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 (i32*, i32, i8*, ...) @write_line(i32* %86, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %88

88:                                               ; preds = %78, %66
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = load i32*, i32** %3, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %94 = call i32 @write_cpp_method_def(i32* %92, %struct.TYPE_15__* %93)
  br label %95

95:                                               ; preds = %91, %88
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %97 = call %struct.TYPE_15__* @type_iface_get_inherit(%struct.TYPE_15__* %96)
  %98 = icmp ne %struct.TYPE_15__* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 (i32*, i32, i8*, ...) @write_line(i32* %100, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %95
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 (i32*, i32, i8*, ...) @write_line(i32* %103, i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @is_global_namespace(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %102
  %111 = load i32*, i32** %3, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @write_namespace_end(i32* %111, i32 %114)
  %116 = load i32*, i32** %3, align 8
  %117 = call i32 (i32*, i32, i8*, ...) @write_line(i32* %116, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  br label %118

118:                                              ; preds = %110, %102
  %119 = load i32*, i32** %6, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load i32*, i32** %3, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %124 = load i32*, i32** %6, align 8
  %125 = call i32 @write_uuid_decl(i32* %122, %struct.TYPE_15__* %123, i32* %124)
  br label %126

126:                                              ; preds = %121, %118
  %127 = load i32*, i32** %3, align 8
  %128 = call i32 (i32*, i8*, ...) @fprintf(i32* %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %129 = load i32*, i32** %3, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 (i32*, i32, i8*, ...) @write_line(i32* %129, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i8* %132)
  %134 = load i32*, i32** %3, align 8
  %135 = call i32 (i32*, i32, i8*, ...) @write_line(i32* %134, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %136 = load i32, i32* %5, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %126
  %139 = load i32*, i32** %3, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %141 = call i32 @write_c_disp_method_def(i32* %139, %struct.TYPE_15__* %140)
  br label %146

142:                                              ; preds = %126
  %143 = load i32*, i32** %3, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %145 = call i32 @write_c_method_def(i32* %143, %struct.TYPE_15__* %144)
  br label %146

146:                                              ; preds = %142, %138
  %147 = load i32*, i32** %3, align 8
  %148 = call i32 (i32*, i32, i8*, ...) @write_line(i32* %147, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  %149 = load i32*, i32** %3, align 8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 (i32*, i32, i8*, ...) @write_line(i32* %149, i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* %152)
  %154 = load i32*, i32** %3, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 (i32*, i8*, ...) @fprintf(i32* %154, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8* %157)
  %159 = load i32*, i32** %3, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 (i32*, i8*, ...) @fprintf(i32* %159, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0), i8* %162)
  %164 = load i32*, i32** %3, align 8
  %165 = call i32 (i32*, i8*, ...) @fprintf(i32* %164, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %166 = load i32*, i32** %3, align 8
  %167 = call i32 (i32*, i8*, ...) @fprintf(i32* %166, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  %168 = load i32*, i32** %3, align 8
  %169 = call i32 (i32*, i8*, ...) @fprintf(i32* %168, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0))
  %170 = load i32, i32* %5, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %146
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %174 = call %struct.TYPE_15__* @type_iface_get_inherit(%struct.TYPE_15__* %173)
  br label %177

175:                                              ; preds = %146
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  br label %177

177:                                              ; preds = %175, %172
  %178 = phi %struct.TYPE_15__* [ %174, %172 ], [ %176, %175 ]
  store %struct.TYPE_15__* %178, %struct.TYPE_15__** %7, align 8
  %179 = load i32*, i32** %3, align 8
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @write_method_macro(i32* %179, %struct.TYPE_15__* %180, %struct.TYPE_15__* %181, i8* %184)
  %186 = load i32*, i32** %3, align 8
  %187 = call i32 (i32*, i8*, ...) @fprintf(i32* %186, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %188 = load i32*, i32** %3, align 8
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @write_inline_wrappers(i32* %188, %struct.TYPE_15__* %189, %struct.TYPE_15__* %190, i8* %193)
  %195 = load i32*, i32** %3, align 8
  %196 = call i32 (i32*, i8*, ...) @fprintf(i32* %195, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0))
  %197 = load i32*, i32** %3, align 8
  %198 = call i32 (i32*, i8*, ...) @fprintf(i32* %197, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0))
  %199 = load i32*, i32** %3, align 8
  %200 = call i32 (i32*, i8*, ...) @fprintf(i32* %199, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  %201 = load i32*, i32** %3, align 8
  %202 = call i32 (i32*, i8*, ...) @fprintf(i32* %201, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0))
  %203 = load i32*, i32** %3, align 8
  %204 = call i32 (i32*, i8*, ...) @fprintf(i32* %203, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  %205 = load i32, i32* %5, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %220, label %207

207:                                              ; preds = %177
  %208 = load i32, i32* @winrt_mode, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %220, label %210

210:                                              ; preds = %207
  %211 = load i32*, i32** %3, align 8
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %213 = call i32 @write_method_proto(i32* %211, %struct.TYPE_15__* %212)
  %214 = load i32*, i32** %3, align 8
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %216 = load i32, i32* @FALSE, align 4
  %217 = call i32 @write_locals(i32* %214, %struct.TYPE_15__* %215, i32 %216)
  %218 = load i32*, i32** %3, align 8
  %219 = call i32 (i32*, i8*, ...) @fprintf(i32* %218, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  br label %220

220:                                              ; preds = %210, %207, %177
  %221 = load i32*, i32** %3, align 8
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = load i32, i32* %5, align 4
  %226 = icmp ne i32 %225, 0
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i64 0, i64 0)
  %229 = call i32 (i32*, i8*, ...) @fprintf(i32* %221, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.25, i64 0, i64 0), i8* %224, i8* %228)
  ret void
}

declare dso_local i32 @is_attr(i32, i32) #1

declare dso_local i32* @get_attrp(i32, i32) #1

declare dso_local i32 @write_guid(i32*, i8*, i8*, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @is_global_namespace(i32) #1

declare dso_local i32 @write_line(i32*, i32, i8*, ...) #1

declare dso_local i32 @write_namespace_start(i32*, i32) #1

declare dso_local i8* @uuid_string(i32*) #1

declare dso_local i32 @indent(i32*, i32) #1

declare dso_local %struct.TYPE_15__* @type_iface_get_inherit(%struct.TYPE_15__*) #1

declare dso_local i32 @write_cpp_method_def(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @write_namespace_end(i32*, i32) #1

declare dso_local i32 @write_uuid_decl(i32*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @write_c_disp_method_def(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @write_c_method_def(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @write_method_macro(i32*, %struct.TYPE_15__*, %struct.TYPE_15__*, i8*) #1

declare dso_local i32 @write_inline_wrappers(i32*, %struct.TYPE_15__*, %struct.TYPE_15__*, i8*) #1

declare dso_local i32 @write_method_proto(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @write_locals(i32*, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
