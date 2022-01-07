; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_resource.c_vlc_http_res_init.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_resource.c_vlc_http_res_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_resource = type { i32, i32, i32, i32*, i32*, i32*, %struct.vlc_http_mgr*, i32*, i32*, i32*, i32*, i32, i32*, %struct.vlc_http_resource_cbs* }
%struct.vlc_http_resource_cbs = type { i32 }
%struct.vlc_http_mgr = type { i32 }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i32*, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"https\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@ENOTSUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s?%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_http_res_init(%struct.vlc_http_resource* noalias %0, %struct.vlc_http_resource_cbs* %1, %struct.vlc_http_mgr* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vlc_http_resource*, align 8
  %9 = alloca %struct.vlc_http_resource_cbs*, align 8
  %10 = alloca %struct.vlc_http_mgr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_4__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.vlc_http_resource* %0, %struct.vlc_http_resource** %8, align 8
  store %struct.vlc_http_resource_cbs* %1, %struct.vlc_http_resource_cbs** %9, align 8
  store %struct.vlc_http_mgr* %2, %struct.vlc_http_mgr** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = call i64 @vlc_UrlParse(%struct.TYPE_4__* %14, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  br label %173

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %21
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* @errno, align 4
  br label %173

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 6
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @vlc_ascii_strcasecmp(i32* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 1, i32* %15, align 4
  br label %46

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 6
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @vlc_ascii_strcasecmp(i32* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 0, i32* %15, align 4
  br label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @ENOTSUP, align 4
  store i32 %44, i32* @errno, align 4
  br label %173

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %45, %36
  %47 = load %struct.vlc_http_resource_cbs*, %struct.vlc_http_resource_cbs** %9, align 8
  %48 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %8, align 8
  %49 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %48, i32 0, i32 13
  store %struct.vlc_http_resource_cbs* %47, %struct.vlc_http_resource_cbs** %49, align 8
  %50 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %8, align 8
  %51 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %50, i32 0, i32 12
  store i32* null, i32** %51, align 8
  %52 = load i32, i32* %15, align 4
  %53 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %8, align 8
  %54 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %8, align 8
  %56 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %8, align 8
  %58 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %57, i32 0, i32 2
  store i32 0, i32* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32* @strdup(i8* %60)
  %62 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %8, align 8
  %63 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %62, i32 0, i32 5
  store i32* %61, i32** %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %8, align 8
  %67 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %66, i32 0, i32 11
  store i32 %65, i32* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = call i32* @vlc_http_authority(i8* %69, i32 %71)
  %73 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %8, align 8
  %74 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %73, i32 0, i32 4
  store i32* %72, i32** %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %46
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i32* @strdup(i8* %80)
  br label %83

82:                                               ; preds = %46
  br label %83

83:                                               ; preds = %82, %78
  %84 = phi i32* [ %81, %78 ], [ null, %82 ]
  %85 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %8, align 8
  %86 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %85, i32 0, i32 10
  store i32* %84, i32** %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = call i32* @strdup(i8* %92)
  br label %95

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94, %90
  %96 = phi i32* [ %93, %90 ], [ null, %94 ]
  %97 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %8, align 8
  %98 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %97, i32 0, i32 9
  store i32* %96, i32** %98, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i8*, i8** %12, align 8
  %103 = call i32* @strdup(i8* %102)
  br label %105

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104, %101
  %106 = phi i32* [ %103, %101 ], [ null, %104 ]
  %107 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %8, align 8
  %108 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %107, i32 0, i32 8
  store i32* %106, i32** %108, align 8
  %109 = load i8*, i8** %13, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i8*, i8** %13, align 8
  %113 = call i32* @strdup(i8* %112)
  br label %115

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %114, %111
  %116 = phi i32* [ %113, %111 ], [ null, %114 ]
  %117 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %8, align 8
  %118 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %117, i32 0, i32 7
  store i32* %116, i32** %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %120 = load i8*, i8** %119, align 8
  store i8* %120, i8** %16, align 8
  %121 = load i8*, i8** %16, align 8
  %122 = icmp eq i8* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  br label %124

124:                                              ; preds = %123, %115
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %140

128:                                              ; preds = %124
  %129 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %8, align 8
  %130 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %129, i32 0, i32 3
  %131 = load i8*, i8** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @asprintf(i32** %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %131, i32* %133)
  %135 = icmp eq i32 %134, -1
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %8, align 8
  %138 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %137, i32 0, i32 3
  store i32* null, i32** %138, align 8
  br label %139

139:                                              ; preds = %136, %128
  br label %145

140:                                              ; preds = %124
  %141 = load i8*, i8** %16, align 8
  %142 = call i32* @strdup(i8* %141)
  %143 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %8, align 8
  %144 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %143, i32 0, i32 3
  store i32* %142, i32** %144, align 8
  br label %145

145:                                              ; preds = %140, %139
  %146 = call i32 @vlc_UrlClean(%struct.TYPE_4__* %14)
  %147 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %10, align 8
  %148 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %8, align 8
  %149 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %148, i32 0, i32 6
  store %struct.vlc_http_mgr* %147, %struct.vlc_http_mgr** %149, align 8
  %150 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %8, align 8
  %151 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %150, i32 0, i32 5
  %152 = load i32*, i32** %151, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %164, label %154

154:                                              ; preds = %145
  %155 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %8, align 8
  %156 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %155, i32 0, i32 4
  %157 = load i32*, i32** %156, align 8
  %158 = icmp eq i32* %157, null
  br i1 %158, label %164, label %159

159:                                              ; preds = %154
  %160 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %8, align 8
  %161 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = icmp eq i32* %162, null
  br label %164

164:                                              ; preds = %159, %154, %145
  %165 = phi i1 [ true, %154 ], [ true, %145 ], [ %163, %159 ]
  %166 = zext i1 %165 to i32
  %167 = call i64 @unlikely(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %8, align 8
  %171 = call i32 @vlc_http_res_deinit(%struct.vlc_http_resource* %170)
  store i32 -1, i32* %7, align 4
  br label %175

172:                                              ; preds = %164
  store i32 0, i32* %7, align 4
  br label %175

173:                                              ; preds = %43, %29, %20
  %174 = call i32 @vlc_UrlClean(%struct.TYPE_4__* %14)
  store i32 -1, i32* %7, align 4
  br label %175

175:                                              ; preds = %173, %172, %169
  %176 = load i32, i32* %7, align 4
  ret i32 %176
}

declare dso_local i64 @vlc_UrlParse(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @vlc_ascii_strcasecmp(i32*, i8*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32* @vlc_http_authority(i8*, i32) #1

declare dso_local i32 @asprintf(i32**, i8*, i8*, i32*) #1

declare dso_local i32 @vlc_UrlClean(%struct.TYPE_4__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_http_res_deinit(%struct.vlc_http_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
