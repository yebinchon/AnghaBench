; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_classes.c_register_verb.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_classes.c_register_verb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i32 }

@register_verb.szShell = internal constant [6 x i8] c"shell\00", align 1
@register_verb.szCommand = internal constant [8 x i8] c"command\00", align 1
@register_verb.fmt = internal constant [8 x i8] c"\22%s\22 %s\00", align 1
@register_verb.fmt2 = internal constant [5 x i8] c"\22%s\22\00", align 1
@.str = private unnamed_addr constant [15 x i8] c"Making Key %s\0A\00", align 1
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@szSpace = common dso_local global i32 0, align 4
@MSI_NULL_INTEGER = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_10__*, i64*)* @register_verb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_verb(i32* %0, i32 %1, %struct.TYPE_12__* %2, %struct.TYPE_11__* %3, %struct.TYPE_10__* %4, i64* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %11, align 8
  store i64* %5, i64** %12, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (i32, i32, i8*, ...) @msi_build_directory_name(i32 4, i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @register_verb.szShell, i64 0, i64 0), i64 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @register_verb.szCommand, i64 0, i64 0))
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @debugstr_w(i32 %23)
  %25 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @RegCreateKeyW(i32 %26, i32 %27, i32* %14)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strlenW(i32 %31)
  store i32 %32, i32* %16, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %6
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @strlenW(i32 %40)
  %42 = load i32, i32* %16, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %16, align 4
  br label %44

44:                                               ; preds = %37, %6
  %45 = load i32, i32* %16, align 4
  %46 = add nsw i32 %45, 4
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 1
  %50 = trunc i64 %49 to i32
  %51 = call i32 @msi_alloc(i32 %50)
  store i32 %51, i32* %15, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %44
  %57 = load i32, i32* %15, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32, i8*, i32, ...) @sprintfW(i32 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @register_verb.fmt, i64 0, i64 0), i32 %60, i32 %63)
  br label %71

65:                                               ; preds = %44
  %66 = load i32, i32* %15, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, i32, ...) @sprintfW(i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @register_verb.fmt2, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %65, %56
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @msi_reg_set_val_str(i32 %72, i32* null, i32 %73)
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @msi_free(i32 %75)
  %77 = load i32*, i32** %7, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @msi_create_component_advertise_string(i32* %77, %struct.TYPE_12__* %78, i32 %83)
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %17, align 4
  %86 = call i32 @strlenW(i32 %85)
  store i32 %86, i32* %16, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %71
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @strlenW(i32 %94)
  %96 = load i32, i32* %16, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %16, align 4
  br label %98

98:                                               ; preds = %91, %71
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %99, 4
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 1
  %104 = trunc i64 %103 to i32
  %105 = call i32 @msi_alloc_zero(i32 %104)
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %17, align 4
  %108 = call i32 @strcpyW(i32 %106, i32 %107)
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %98
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* @szSpace, align 4
  %116 = call i32 @strcatW(i32 %114, i32 %115)
  %117 = load i32, i32* %15, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @strcatW(i32 %117, i32 %120)
  br label %122

122:                                              ; preds = %113, %98
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %15, align 4
  %125 = call i32 @msi_reg_set_val_multi_str(i32 %123, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @register_verb.szCommand, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %14, align 4
  %127 = call i32 @RegCloseKey(i32 %126)
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @msi_free(i32 %128)
  %130 = load i32, i32* %17, align 4
  %131 = call i32 @msi_free(i32 %130)
  %132 = load i32, i32* %15, align 4
  %133 = call i32 @msi_free(i32 %132)
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %122
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = call i32 (i32, i32, i8*, ...) @msi_build_directory_name(i32 3, i32 %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @register_verb.szShell, i64 0, i64 0), i64 %142)
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %145 = load i32, i32* %13, align 4
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @msi_reg_set_subkey_val(i32 %144, i32 %145, i32* null, i64 %148)
  %150 = load i32, i32* %13, align 4
  %151 = call i32 @msi_free(i32 %150)
  br label %152

152:                                              ; preds = %138, %122
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @MSI_NULL_INTEGER, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %186

158:                                              ; preds = %152
  %159 = load i64*, i64** %12, align 8
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @MSI_NULL_INTEGER, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %170, label %163

163:                                              ; preds = %158
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64*, i64** %12, align 8
  %168 = load i64, i64* %167, align 8
  %169 = icmp slt i64 %166, %168
  br i1 %169, label %170, label %185

170:                                              ; preds = %163, %158
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64*, i64** %12, align 8
  store i64 %173, i64* %174, align 8
  %175 = load i32, i32* %8, align 4
  %176 = call i32 (i32, i32, i8*, ...) @msi_build_directory_name(i32 2, i32 %175, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @register_verb.szShell, i64 0, i64 0))
  store i32 %176, i32* %13, align 4
  %177 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %178 = load i32, i32* %13, align 4
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @msi_reg_set_subkey_val(i32 %177, i32 %178, i32* null, i64 %181)
  %183 = load i32, i32* %13, align 4
  %184 = call i32 @msi_free(i32 %183)
  br label %185

185:                                              ; preds = %170, %163
  br label %186

186:                                              ; preds = %185, %152
  %187 = load i32, i32* @ERROR_SUCCESS, align 4
  ret i32 %187
}

declare dso_local i32 @msi_build_directory_name(i32, i32, i8*, ...) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @RegCreateKeyW(i32, i32, i32*) #1

declare dso_local i32 @strlenW(i32) #1

declare dso_local i32 @msi_alloc(i32) #1

declare dso_local i32 @sprintfW(i32, i8*, i32, ...) #1

declare dso_local i32 @msi_reg_set_val_str(i32, i32*, i32) #1

declare dso_local i32 @msi_free(i32) #1

declare dso_local i32 @msi_create_component_advertise_string(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @msi_alloc_zero(i32) #1

declare dso_local i32 @strcpyW(i32, i32) #1

declare dso_local i32 @strcatW(i32, i32) #1

declare dso_local i32 @msi_reg_set_val_multi_str(i32, i8*, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @msi_reg_set_subkey_val(i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
