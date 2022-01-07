; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_classes.c_load_class.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_classes.c_load_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i8*, i8*, i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"loading class %s\0A\00", align 1
@load_class.fmt = internal constant [6 x i8] c"%s,%i\00", align 1
@MSI_NULL_INTEGER = common dso_local global i32 0, align 4
@load_class.ole2 = internal constant [9 x i8] c"ole2.dll\00", align 1
@load_class.ole32 = internal constant [10 x i8] c"ole32.dll\00", align 1
@INSTALLSTATE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_12__*, i32*)* @load_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @load_class(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = call %struct.TYPE_13__* @msi_alloc_zero(i32 112)
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %6, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %14 = icmp ne %struct.TYPE_13__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %180

16:                                               ; preds = %2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 15
  %21 = call i32 @list_add_tail(i32* %18, i32* %20)
  %22 = load i32*, i32** %5, align 8
  %23 = call i8* @msi_dup_record_field(i32* %22, i32 1)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 14
  store i8* %23, i8** %25, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 14
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @debugstr_w(i8* %28)
  %30 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = call i8* @msi_dup_record_field(i32* %31, i32 2)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 13
  store i8* %32, i8** %34, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @MSI_RecordGetString(i32* %35, i32 3)
  store i64 %36, i64* %8, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @msi_get_loaded_component(%struct.TYPE_12__* %37, i64 %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 12
  store i32 %39, i32* %41, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = call i8* @msi_dup_record_field(i32* %42, i32 4)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 10
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 10
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @load_given_progid(%struct.TYPE_12__* %46, i8* %49)
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 11
  store i32 %50, i32* %52, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = call i8* @msi_dup_record_field(i32* %53, i32 5)
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 9
  store i8* %54, i8** %56, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = call i64 @MSI_RecordGetString(i32* %57, i32 6)
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* %8, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %16
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @load_given_appid(%struct.TYPE_12__* %62, i64 %63)
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %61, %16
  %68 = load i32*, i32** %5, align 8
  %69 = call i8* @msi_dup_record_field(i32* %68, i32 7)
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 7
  store i8* %69, i8** %71, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @MSI_RecordIsNull(i32* %72, i32 9)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %100, label %75

75:                                               ; preds = %67
  %76 = load i32*, i32** %5, align 8
  %77 = call i8* @MSI_RecordGetInteger(i32* %76, i32 9)
  store i8* %77, i8** %9, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = call i64 @MSI_RecordGetString(i32* %78, i32 8)
  store i64 %79, i64* %10, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %81 = load i64, i64* %10, align 8
  %82 = call i8* @msi_build_icon_path(%struct.TYPE_12__* %80, i64 %81)
  store i8* %82, i8** %11, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @strlenW(i8* %83)
  %85 = add nsw i32 %84, 5
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 1
  %88 = trunc i64 %87 to i32
  %89 = call i8* @msi_alloc(i32 %88)
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 6
  store i8* %89, i8** %91, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 6
  %94 = load i8*, i8** %93, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 @sprintfW(i8* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @load_class.fmt, i64 0, i64 0), i8* %95, i8* %96)
  %98 = load i8*, i8** %11, align 8
  %99 = call i32 @msi_free(i8* %98)
  br label %112

100:                                              ; preds = %67
  %101 = load i32*, i32** %5, align 8
  %102 = call i64 @MSI_RecordGetString(i32* %101, i32 8)
  store i64 %102, i64* %8, align 8
  %103 = load i64, i64* %8, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %107 = load i64, i64* %8, align 8
  %108 = call i8* @msi_build_icon_path(%struct.TYPE_12__* %106, i64 %107)
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 6
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %105, %100
  br label %112

112:                                              ; preds = %111, %75
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @MSI_RecordIsNull(i32* %113, i32 10)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %157, label %116

116:                                              ; preds = %112
  %117 = load i32*, i32** %5, align 8
  %118 = call i8* @MSI_RecordGetInteger(i32* %117, i32 10)
  %119 = ptrtoint i8* %118 to i32
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @MSI_NULL_INTEGER, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %147

123:                                              ; preds = %116
  %124 = load i32, i32* %7, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %147

126:                                              ; preds = %123
  %127 = load i32, i32* %7, align 4
  %128 = icmp slt i32 %127, 4
  br i1 %128, label %129, label %147

129:                                              ; preds = %126
  %130 = load i32, i32* %7, align 4
  switch i32 %130, label %146 [
    i32 1, label %131
    i32 2, label %135
    i32 3, label %139
  ]

131:                                              ; preds = %129
  %132 = call i8* @strdupW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @load_class.ole2, i64 0, i64 0))
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 5
  store i8* %132, i8** %134, align 8
  br label %146

135:                                              ; preds = %129
  %136 = call i8* @strdupW(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @load_class.ole32, i64 0, i64 0))
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 4
  store i8* %136, i8** %138, align 8
  br label %146

139:                                              ; preds = %129
  %140 = call i8* @strdupW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @load_class.ole2, i64 0, i64 0))
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 5
  store i8* %140, i8** %142, align 8
  %143 = call i8* @strdupW(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @load_class.ole32, i64 0, i64 0))
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 4
  store i8* %143, i8** %145, align 8
  br label %146

146:                                              ; preds = %129, %139, %135, %131
  br label %156

147:                                              ; preds = %126, %123, %116
  %148 = load i32*, i32** %5, align 8
  %149 = call i8* @msi_dup_record_field(i32* %148, i32 10)
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 4
  store i8* %149, i8** %151, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 4
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @msi_reduce_to_long_filename(i8* %154)
  br label %156

156:                                              ; preds = %147, %146
  br label %157

157:                                              ; preds = %156, %112
  %158 = load i32*, i32** %5, align 8
  %159 = call i64 @MSI_RecordGetString(i32* %158, i32 11)
  store i64 %159, i64* %8, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %161 = load i64, i64* %8, align 8
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 3
  %164 = call i32 @deformat_string(%struct.TYPE_12__* %160, i64 %161, i32* %163)
  %165 = load i32*, i32** %5, align 8
  %166 = call i64 @MSI_RecordGetString(i32* %165, i32 12)
  store i64 %166, i64* %8, align 8
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %168 = load i64, i64* %8, align 8
  %169 = call i32 @msi_get_loaded_feature(%struct.TYPE_12__* %167, i64 %168)
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 8
  %172 = load i32*, i32** %5, align 8
  %173 = call i8* @MSI_RecordGetInteger(i32* %172, i32 13)
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 1
  store i8* %173, i8** %175, align 8
  %176 = load i32, i32* @INSTALLSTATE_UNKNOWN, align 4
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %179, %struct.TYPE_13__** %3, align 8
  br label %180

180:                                              ; preds = %157, %15
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %181
}

declare dso_local %struct.TYPE_13__* @msi_alloc_zero(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i8* @msi_dup_record_field(i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i64 @MSI_RecordGetString(i32*, i32) #1

declare dso_local i32 @msi_get_loaded_component(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @load_given_progid(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @load_given_appid(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @MSI_RecordIsNull(i32*, i32) #1

declare dso_local i8* @MSI_RecordGetInteger(i32*, i32) #1

declare dso_local i8* @msi_build_icon_path(%struct.TYPE_12__*, i64) #1

declare dso_local i8* @msi_alloc(i32) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @sprintfW(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @msi_free(i8*) #1

declare dso_local i8* @strdupW(i8*) #1

declare dso_local i32 @msi_reduce_to_long_filename(i8*) #1

declare dso_local i32 @deformat_string(%struct.TYPE_12__*, i64, i32*) #1

declare dso_local i32 @msi_get_loaded_feature(%struct.TYPE_12__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
