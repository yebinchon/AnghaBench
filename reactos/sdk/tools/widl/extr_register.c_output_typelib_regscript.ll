; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_register.c_output_typelib_regscript.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_register.c_output_typelib_regscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@ATTR_UUID = common dso_local global i32 0, align 4
@ATTR_HELPSTRING = common dso_local global i32 0, align 4
@ATTR_LIBLCID = common dso_local global i32 0, align 4
@ATTR_VERSION = common dso_local global i32 0, align 4
@typelib_name = common dso_local global i8* null, align 8
@ATTR_RESTRICTED = common dso_local global i32 0, align 4
@ATTR_CONTROL = common dso_local global i32 0, align 4
@ATTR_HIDDEN = common dso_local global i32 0, align 4
@indent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"HKCR\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"NoRemove Typelib\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"NoRemove '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"'%u.%u' = s '%s'\0A\00", align 1
@ATTR_ID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"\\%d\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s\\%d\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"'%x' { %s = s '%%MODULE%%%s' }\0A\00", align 1
@pointer_size = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"win64\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"win32\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"FLAGS = s '%u'\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"NoRemove Interface\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"NoRemove CLSID\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"WINE_REGISTRY\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_typelib_regscript(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [12 x i8], align 1
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ATTR_UUID, align 4
  %15 = call i8* @get_attrp(i32 %13, i32 %14)
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %3, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ATTR_HELPSTRING, align 4
  %21 = call i8* @get_attrp(i32 %19, i32 %20)
  store i8* %21, i8** %4, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ATTR_LIBLCID, align 4
  %26 = call i8* @get_attrp(i32 %24, i32 %25)
  %27 = bitcast i8* %26 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %5, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ATTR_VERSION, align 4
  %32 = call i32 @get_attrv(i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %33 = bitcast [12 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %33, i8 0, i64 12, i1 false)
  %34 = load i8*, i8** @typelib_name, align 8
  store i8* %34, i8** %9, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ATTR_RESTRICTED, align 4
  %39 = call i64 @is_attr(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %1
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %41, %1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ATTR_CONTROL, align 4
  %49 = call i64 @is_attr(i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, 2
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %51, %44
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ATTR_HIDDEN, align 4
  %59 = call i64 @is_attr(i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, 4
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %61, %54
  %65 = load i32, i32* @indent, align 4
  %66 = call i32 (i32, i8*, ...) @put_str(i32 %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @indent, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @indent, align 4
  %69 = call i32 (i32, i8*, ...) @put_str(i32 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @indent, align 4
  %71 = call i32 (i32, i8*, ...) @put_str(i32 %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @indent, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @indent, align 4
  %74 = call i32 (i32, i8*, ...) @put_str(i32 %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* @indent, align 4
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @format_uuid(i32* %76)
  %78 = call i32 (i32, i8*, ...) @put_str(i32 %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @indent, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* @indent, align 4
  %81 = call i32 (i32, i8*, ...) @put_str(i32 %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @indent, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @MAJORVERSION(i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @MINORVERSION(i32 %85)
  %87 = load i8*, i8** %4, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %64
  %90 = load i8*, i8** %4, align 8
  br label %95

91:                                               ; preds = %64
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  br label %95

95:                                               ; preds = %91, %89
  %96 = phi i8* [ %90, %89 ], [ %94, %91 ]
  %97 = call i32 (i32, i8*, ...) @put_str(i32 %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %84, i32 %86, i8* %96)
  %98 = load i32, i32* @indent, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* @indent, align 4
  %100 = call i32 (i32, i8*, ...) @put_str(i32 %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @ATTR_ID, align 4
  %105 = call i8* @get_attrp(i32 %103, i32 %104)
  %106 = bitcast i8* %105 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %106, %struct.TYPE_7__** %10, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %108 = icmp ne %struct.TYPE_7__* %107, null
  br i1 %108, label %109, label %125

109:                                              ; preds = %95
  %110 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i8*, i8*, ...) @sprintf(i8* %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %113)
  %115 = load i8*, i8** @typelib_name, align 8
  %116 = call i64 @strlen(i8* %115)
  %117 = add nsw i64 %116, 20
  %118 = call i8* @xmalloc(i64 %117)
  store i8* %118, i8** %9, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = load i8*, i8** @typelib_name, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i8*, i8*, ...) @sprintf(i8* %119, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %120, i32 %123)
  br label %125

125:                                              ; preds = %109, %95
  %126 = load i32, i32* @indent, align 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %128 = icmp ne %struct.TYPE_7__* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  br label %134

133:                                              ; preds = %125
  br label %134

134:                                              ; preds = %133, %129
  %135 = phi i32 [ %132, %129 ], [ 0, %133 ]
  %136 = load i32, i32* @pointer_size, align 4
  %137 = icmp eq i32 %136, 8
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)
  %140 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %141 = call i32 (i32, i8*, ...) @put_str(i32 %126, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %135, i8* %139, i8* %140)
  %142 = load i32, i32* @indent, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i32 (i32, i8*, ...) @put_str(i32 %142, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* @indent, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* @indent, align 4
  %147 = call i32 (i32, i8*, ...) @put_str(i32 %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %148 = load i32, i32* @indent, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* @indent, align 4
  %150 = call i32 (i32, i8*, ...) @put_str(i32 %149, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %151 = load i32, i32* @indent, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* @indent, align 4
  %153 = call i32 (i32, i8*, ...) @put_str(i32 %152, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %154 = load i32, i32* @indent, align 4
  %155 = call i32 (i32, i8*, ...) @put_str(i32 %154, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %156 = load i32, i32* @indent, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* @indent, align 4
  %158 = call i32 (i32, i8*, ...) @put_str(i32 %156, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %160 = call i32 @write_typelib_interfaces(%struct.TYPE_6__* %159)
  %161 = load i32, i32* @indent, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* @indent, align 4
  %163 = call i32 (i32, i8*, ...) @put_str(i32 %162, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %164 = load i32, i32* @indent, align 4
  %165 = call i32 (i32, i8*, ...) @put_str(i32 %164, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %166 = load i32, i32* @indent, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* @indent, align 4
  %168 = call i32 (i32, i8*, ...) @put_str(i32 %166, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %173 = call i32 @write_coclasses(i32 %171, %struct.TYPE_6__* %172)
  %174 = load i32, i32* @indent, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* @indent, align 4
  %176 = call i32 (i32, i8*, ...) @put_str(i32 %175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @write_progids(i32 %179)
  %181 = load i32, i32* @indent, align 4
  %182 = add nsw i32 %181, -1
  store i32 %182, i32* @indent, align 4
  %183 = call i32 (i32, i8*, ...) @put_str(i32 %182, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %184 = load i8*, i8** %9, align 8
  %185 = call i32 @add_output_to_resources(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %184)
  ret void
}

declare dso_local i8* @get_attrp(i32, i32) #1

declare dso_local i32 @get_attrv(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @is_attr(i32, i32) #1

declare dso_local i32 @put_str(i32, i8*, ...) #1

declare dso_local i32 @format_uuid(i32*) #1

declare dso_local i32 @MAJORVERSION(i32) #1

declare dso_local i32 @MINORVERSION(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @write_typelib_interfaces(%struct.TYPE_6__*) #1

declare dso_local i32 @write_coclasses(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @write_progids(i32) #1

declare dso_local i32 @add_output_to_resources(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
