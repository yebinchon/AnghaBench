; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-doc.c_xps_parse_metadata_imp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-doc.c_xps_parse_metadata_imp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8* }
%struct.TYPE_9__ = type { i8* }

@.str = private unnamed_addr constant [13 x i8] c"Relationship\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Target\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@REL_START_PART = common dso_local global i32 0, align 4
@REL_START_PART_OXPS = common dso_local global i32 0, align 4
@REL_DOC_STRUCTURE = common dso_local global i32 0, align 4
@REL_DOC_STRUCTURE_OXPS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"Id\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"missing relationship id for %s\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"DocumentReference\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Source\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"PageContent\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"LinkTarget\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_10__*, i32*, %struct.TYPE_9__*)* @xps_parse_metadata_imp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xps_parse_metadata_imp(i32* %0, %struct.TYPE_10__* %1, i32* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [1024 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [1024 x i8], align 16
  %20 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %8, align 8
  br label %21

21:                                               ; preds = %179, %4
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %187

24:                                               ; preds = %21
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @fz_xml_is_tag(i32* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %96

28:                                               ; preds = %24
  %29 = load i32*, i32** %7, align 8
  %30 = call i8* @fz_xml_att(i32* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %30, i8** %9, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i8* @fz_xml_att(i32* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %95

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %95

38:                                               ; preds = %35
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @xps_resolve_url(i32* %39, %struct.TYPE_10__* %40, i8* %41, i32 %44, i8* %45, i32 1024)
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* @REL_START_PART, align 4
  %49 = call i32 @strcmp(i8* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %38
  %52 = load i8*, i8** %10, align 8
  %53 = load i32, i32* @REL_START_PART_OXPS, align 4
  %54 = call i32 @strcmp(i8* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %51, %38
  %57 = load i32*, i32** %5, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @fz_free(i32* %57, i8* %60)
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %64 = call i8* @fz_strdup(i32* %62, i8* %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %56, %51
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* @REL_DOC_STRUCTURE, align 4
  %70 = call i32 @strcmp(i8* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i8*, i8** %10, align 8
  %74 = load i32, i32* @REL_DOC_STRUCTURE_OXPS, align 4
  %75 = call i32 @strcmp(i8* %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %72, %67
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = icmp ne %struct.TYPE_9__* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %83 = call i8* @fz_strdup(i32* %81, i8* %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %80, %77, %72
  %87 = load i32*, i32** %7, align 8
  %88 = call i8* @fz_xml_att(i32* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %89 = icmp ne i8* %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i32*, i32** %5, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 @fz_warn(i32* %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %90, %86
  br label %95

95:                                               ; preds = %94, %35, %28
  br label %96

96:                                               ; preds = %95, %24
  %97 = load i32*, i32** %7, align 8
  %98 = call i64 @fz_xml_is_tag(i32* %97, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %96
  %101 = load i32*, i32** %7, align 8
  %102 = call i8* @fz_xml_att(i32* %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i8* %102, i8** %12, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %118

105:                                              ; preds = %100
  %106 = load i32*, i32** %5, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %108 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = call i32 @xps_resolve_url(i32* %106, %struct.TYPE_10__* %107, i8* %108, i32 %111, i8* %112, i32 1024)
  %114 = load i32*, i32** %5, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %116 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %117 = call i32 @xps_add_fixed_document(i32* %114, %struct.TYPE_10__* %115, i8* %116)
  br label %118

118:                                              ; preds = %105, %100
  br label %119

119:                                              ; preds = %118, %96
  %120 = load i32*, i32** %7, align 8
  %121 = call i64 @fz_xml_is_tag(i32* %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %164

123:                                              ; preds = %119
  %124 = load i32*, i32** %7, align 8
  %125 = call i8* @fz_xml_att(i32* %124, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i8* %125, i8** %14, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = call i8* @fz_xml_att(i32* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store i8* %127, i8** %15, align 8
  %128 = load i32*, i32** %7, align 8
  %129 = call i8* @fz_xml_att(i32* %128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  store i8* %129, i8** %16, align 8
  %130 = load i8*, i8** %15, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %123
  %133 = load i8*, i8** %15, align 8
  %134 = call i32 @atoi(i8* %133)
  br label %136

135:                                              ; preds = %123
  br label %136

136:                                              ; preds = %135, %132
  %137 = phi i32 [ %134, %132 ], [ 0, %135 ]
  store i32 %137, i32* %17, align 4
  %138 = load i8*, i8** %16, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i8*, i8** %16, align 8
  %142 = call i32 @atoi(i8* %141)
  br label %144

143:                                              ; preds = %136
  br label %144

144:                                              ; preds = %143, %140
  %145 = phi i32 [ %142, %140 ], [ 0, %143 ]
  store i32 %145, i32* %18, align 4
  %146 = load i8*, i8** %14, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %163

148:                                              ; preds = %144
  %149 = load i32*, i32** %5, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %151 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i8*, i8** %14, align 8
  %156 = call i32 @xps_resolve_url(i32* %149, %struct.TYPE_10__* %150, i8* %151, i32 %154, i8* %155, i32 1024)
  %157 = load i32*, i32** %5, align 8
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %159 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* %18, align 4
  %162 = call i32 @xps_add_fixed_page(i32* %157, %struct.TYPE_10__* %158, i8* %159, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %148, %144
  br label %164

164:                                              ; preds = %163, %119
  %165 = load i32*, i32** %7, align 8
  %166 = call i64 @fz_xml_is_tag(i32* %165, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %164
  %169 = load i32*, i32** %7, align 8
  %170 = call i8* @fz_xml_att(i32* %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  store i8* %170, i8** %20, align 8
  %171 = load i8*, i8** %20, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load i32*, i32** %5, align 8
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %176 = load i8*, i8** %20, align 8
  %177 = call i32 @xps_add_link_target(i32* %174, %struct.TYPE_10__* %175, i8* %176)
  br label %178

178:                                              ; preds = %173, %168
  br label %179

179:                                              ; preds = %178, %164
  %180 = load i32*, i32** %5, align 8
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %182 = load i32*, i32** %7, align 8
  %183 = call i32* @fz_xml_down(i32* %182)
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  call void @xps_parse_metadata_imp(i32* %180, %struct.TYPE_10__* %181, i32* %183, %struct.TYPE_9__* %184)
  %185 = load i32*, i32** %7, align 8
  %186 = call i32* @fz_xml_next(i32* %185)
  store i32* %186, i32** %7, align 8
  br label %21

187:                                              ; preds = %21
  ret void
}

declare dso_local i64 @fz_xml_is_tag(i32*, i8*) #1

declare dso_local i8* @fz_xml_att(i32*, i8*) #1

declare dso_local i32 @xps_resolve_url(i32*, %struct.TYPE_10__*, i8*, i32, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @fz_free(i32*, i8*) #1

declare dso_local i8* @fz_strdup(i32*, i8*) #1

declare dso_local i32 @fz_warn(i32*, i8*, i8*) #1

declare dso_local i32 @xps_add_fixed_document(i32*, %struct.TYPE_10__*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @xps_add_fixed_page(i32*, %struct.TYPE_10__*, i8*, i32, i32) #1

declare dso_local i32 @xps_add_link_target(i32*, %struct.TYPE_10__*, i8*) #1

declare dso_local i32* @fz_xml_down(i32*) #1

declare dso_local i32* @fz_xml_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
