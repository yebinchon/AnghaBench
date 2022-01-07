; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_assembly.c_msi_load_assembly.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_assembly.c_msi_load_assembly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i8*, i8*, i8**, %struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i32*, i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"feature %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"manifest %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"application %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"attributes %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"can't get display name\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"display name %s\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@msidbAssemblyAttributesWin32 = common dso_local global i64 0, align 8
@CLR_VERSION_MAX = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"runtime version %s\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"assembly is %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"installed\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"not installed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @msi_load_assembly(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_19__* @get_assembly_record(%struct.TYPE_20__* %9, i32 %12)
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %6, align 8
  %14 = icmp ne %struct.TYPE_19__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %180

16:                                               ; preds = %2
  %17 = call %struct.TYPE_22__* @msi_alloc_zero(i32 56)
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %7, align 8
  %18 = icmp ne %struct.TYPE_22__* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = call i32 @msiobj_release(i32* %21)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %180

23:                                               ; preds = %16
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %25 = call i32 @MSI_RecordGetString(%struct.TYPE_19__* %24, i32 2)
  %26 = call i8* @strdupW(i32 %25)
  %27 = bitcast i8* %26 to %struct.TYPE_22__*
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 6
  store %struct.TYPE_22__* %27, %struct.TYPE_22__** %29, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 6
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %33 = call i8* @debugstr_w(%struct.TYPE_22__* %32)
  %34 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %36 = call i32 @MSI_RecordGetString(%struct.TYPE_19__* %35, i32 3)
  %37 = call i8* @strdupW(i32 %36)
  %38 = bitcast i8* %37 to %struct.TYPE_22__*
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 5
  store %struct.TYPE_22__* %38, %struct.TYPE_22__** %40, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 5
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %42, align 8
  %44 = call i8* @debugstr_w(%struct.TYPE_22__* %43)
  %45 = call i32 @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %47 = call i32 @MSI_RecordGetString(%struct.TYPE_19__* %46, i32 4)
  %48 = call i8* @strdupW(i32 %47)
  %49 = bitcast i8* %48 to %struct.TYPE_22__*
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 4
  store %struct.TYPE_22__* %49, %struct.TYPE_22__** %51, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %53, align 8
  %55 = call i8* @debugstr_w(%struct.TYPE_22__* %54)
  %56 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %58 = call i8* @MSI_RecordGetInteger(%struct.TYPE_19__* %57, i32 5)
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %72 = call %struct.TYPE_22__* @get_assembly_display_name(i32 %67, i32 %70, %struct.TYPE_22__* %71)
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 3
  store %struct.TYPE_22__* %72, %struct.TYPE_22__** %74, align 8
  %75 = icmp ne %struct.TYPE_22__* %72, null
  br i1 %75, label %95, label %76

76:                                               ; preds = %23
  %77 = call i32 @WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = call i32 @msiobj_release(i32* %79)
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 6
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %82, align 8
  %84 = call i32 @msi_free(%struct.TYPE_22__* %83)
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 5
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %86, align 8
  %88 = call i32 @msi_free(%struct.TYPE_22__* %87)
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %90, align 8
  %92 = call i32 @msi_free(%struct.TYPE_22__* %91)
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %94 = call i32 @msi_free(%struct.TYPE_22__* %93)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %180

95:                                               ; preds = %23
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %97, align 8
  %99 = call i8* @debugstr_w(%struct.TYPE_22__* %98)
  %100 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %99)
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %102, align 8
  %104 = icmp ne %struct.TYPE_22__* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %95
  %106 = load i8*, i8** @FALSE, align 8
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  br label %168

109:                                              ; preds = %95
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i64, i64* @msidbAssemblyAttributesWin32, align 8
  %114 = inttoptr i64 %113 to i8*
  %115 = icmp eq i8* %112, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %109
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %121, align 8
  %123 = call i8* @is_assembly_installed(i32 %119, %struct.TYPE_22__* %122)
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 1
  store i8* %123, i8** %125, align 8
  br label %167

126:                                              ; preds = %109
  store i64 0, i64* %8, align 8
  br label %127

127:                                              ; preds = %163, %126
  %128 = load i64, i64* %8, align 8
  %129 = load i64, i64* @CLR_VERSION_MAX, align 8
  %130 = icmp ult i64 %128, %129
  br i1 %130, label %131, label %166

131:                                              ; preds = %127
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* %8, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %139, align 8
  %141 = call i8* @is_assembly_installed(i32 %137, %struct.TYPE_22__* %140)
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 2
  %144 = load i8**, i8*** %143, align 8
  %145 = load i64, i64* %8, align 8
  %146 = getelementptr inbounds i8*, i8** %144, i64 %145
  store i8* %141, i8** %146, align 8
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 2
  %149 = load i8**, i8*** %148, align 8
  %150 = load i64, i64* %8, align 8
  %151 = getelementptr inbounds i8*, i8** %149, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %162

154:                                              ; preds = %131
  %155 = load i64, i64* %8, align 8
  %156 = call %struct.TYPE_22__* @get_clr_version_str(i64 %155)
  %157 = call i8* @debugstr_w(%struct.TYPE_22__* %156)
  %158 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %157)
  %159 = load i8*, i8** @TRUE, align 8
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  br label %166

162:                                              ; preds = %131
  br label %163

163:                                              ; preds = %162
  %164 = load i64, i64* %8, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %8, align 8
  br label %127

166:                                              ; preds = %154, %127
  br label %167

167:                                              ; preds = %166, %116
  br label %168

168:                                              ; preds = %167, %105
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = icmp ne i8* %171, null
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0)
  %175 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %174)
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 0
  %178 = call i32 @msiobj_release(i32* %177)
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_22__* %179, %struct.TYPE_22__** %3, align 8
  br label %180

180:                                              ; preds = %168, %76, %19, %15
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  ret %struct.TYPE_22__* %181
}

declare dso_local %struct.TYPE_19__* @get_assembly_record(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_22__* @msi_alloc_zero(i32) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local i8* @strdupW(i32) #1

declare dso_local i32 @MSI_RecordGetString(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @TRACE(i8*, i8*) #1

declare dso_local i8* @debugstr_w(%struct.TYPE_22__*) #1

declare dso_local i8* @MSI_RecordGetInteger(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_22__* @get_assembly_display_name(i32, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @msi_free(%struct.TYPE_22__*) #1

declare dso_local i8* @is_assembly_installed(i32, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @get_clr_version_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
