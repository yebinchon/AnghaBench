; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_avahi.c_add_renderer.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_avahi.c_add_renderer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"chromecast\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ca\00", align 1
@VLC_RENDERER_CAN_VIDEO = common dso_local global i32 0, align 4
@VLC_RENDERER_CAN_AUDIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"fn\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ic\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"http://%s:8008%s\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%s://%s:%u\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"no-video\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"cc_demux\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32, i32*, %struct.TYPE_3__*)* @add_renderer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_renderer(i8* %0, i8* %1, i8* %2, i32 %3, i32* %4, %struct.TYPE_3__* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %12, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i32 0, i32* %20, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %165, label %37

37:                                               ; preds = %6
  store i32 0, i32* %21, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = call i32* @avahi_string_list_find(i32* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %39, i32** %14, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %81

42:                                               ; preds = %37
  store i8* null, i8** %22, align 8
  store i8* null, i8** %23, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = call i64 @avahi_string_list_get_pair(i32* %43, i8** %22, i8** %23, i32* null)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %42
  %47 = load i8*, i8** %23, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %68

49:                                               ; preds = %46
  %50 = load i8*, i8** %23, align 8
  %51 = call i32 @atoi(i8* %50)
  store i32 %51, i32* %24, align 4
  %52 = load i32, i32* %24, align 4
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* @VLC_RENDERER_CAN_VIDEO, align 4
  %57 = load i32, i32* %20, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %20, align 4
  br label %59

59:                                               ; preds = %55, %49
  %60 = load i32, i32* %24, align 4
  %61 = and i32 %60, 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* @VLC_RENDERER_CAN_AUDIO, align 4
  %65 = load i32, i32* %20, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %20, align 4
  br label %67

67:                                               ; preds = %63, %59
  br label %68

68:                                               ; preds = %67, %46, %42
  %69 = load i8*, i8** %22, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i8*, i8** %22, align 8
  %73 = call i32 @avahi_free(i8* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i8*, i8** %23, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i8*, i8** %23, align 8
  %79 = call i32 @avahi_free(i8* %78)
  br label %80

80:                                               ; preds = %77, %74
  br label %81

81:                                               ; preds = %80, %37
  %82 = load i32*, i32** %11, align 8
  %83 = call i32* @avahi_string_list_find(i32* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %83, i32** %14, align 8
  %84 = load i32*, i32** %14, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %113

86:                                               ; preds = %81
  store i8* null, i8** %25, align 8
  store i8* null, i8** %26, align 8
  %87 = load i32*, i32** %14, align 8
  %88 = call i64 @avahi_string_list_get_pair(i32* %87, i8** %25, i8** %26, i32* null)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load i8*, i8** %26, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i8*, i8** %26, align 8
  %95 = call i8* @strdup(i8* %94)
  store i8* %95, i8** %15, align 8
  %96 = load i8*, i8** %15, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  store i32 -1, i32* %21, align 4
  br label %99

99:                                               ; preds = %98, %93
  br label %100

100:                                              ; preds = %99, %90, %86
  %101 = load i8*, i8** %25, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i8*, i8** %25, align 8
  %105 = call i32 @avahi_free(i8* %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i8*, i8** %26, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i8*, i8** %26, align 8
  %111 = call i32 @avahi_free(i8* %110)
  br label %112

112:                                              ; preds = %109, %106
  br label %113

113:                                              ; preds = %112, %81
  %114 = load i32, i32* %21, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  br label %193

117:                                              ; preds = %113
  %118 = load i32*, i32** %11, align 8
  %119 = call i32* @avahi_string_list_find(i32* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %119, i32** %14, align 8
  %120 = load i32*, i32** %14, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %147

122:                                              ; preds = %117
  store i8* null, i8** %27, align 8
  store i8* null, i8** %28, align 8
  %123 = load i32*, i32** %14, align 8
  %124 = call i64 @avahi_string_list_get_pair(i32* %123, i8** %27, i8** %28, i32* null)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = load i8*, i8** %28, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i8*, i8** %9, align 8
  %131 = load i8*, i8** %28, align 8
  %132 = call i64 (i8**, i8*, i8*, i8*, ...) @asprintf(i8** %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %130, i8* %131)
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %21, align 4
  br label %134

134:                                              ; preds = %129, %126, %122
  %135 = load i8*, i8** %27, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i8*, i8** %27, align 8
  %139 = call i32 @avahi_free(i8* %138)
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i8*, i8** %28, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i8*, i8** %28, align 8
  %145 = call i32 @avahi_free(i8* %144)
  br label %146

146:                                              ; preds = %143, %140
  br label %147

147:                                              ; preds = %146, %117
  %148 = load i32, i32* %21, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  br label %193

151:                                              ; preds = %147
  %152 = load i8*, i8** %7, align 8
  %153 = load i8*, i8** %9, align 8
  %154 = load i32, i32* %10, align 4
  %155 = call i64 (i8**, i8*, i8*, i8*, ...) @asprintf(i8** %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %152, i8* %153, i32 %154)
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %193

158:                                              ; preds = %151
  %159 = load i32, i32* %20, align 4
  %160 = load i32, i32* @VLC_RENDERER_CAN_VIDEO, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  store i8* %164, i8** %19, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %18, align 8
  br label %165

165:                                              ; preds = %158, %6
  %166 = load i8*, i8** %7, align 8
  %167 = load i8*, i8** %15, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = load i8*, i8** %15, align 8
  br label %173

171:                                              ; preds = %165
  %172 = load i8*, i8** %8, align 8
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i8* [ %170, %169 ], [ %172, %171 ]
  %175 = load i8*, i8** %17, align 8
  %176 = load i8*, i8** %19, align 8
  %177 = load i8*, i8** %18, align 8
  %178 = load i8*, i8** %16, align 8
  %179 = load i32, i32* %20, align 4
  %180 = call i32* @vlc_renderer_item_new(i8* %166, i8* %174, i8* %175, i8* %176, i8* %177, i8* %178, i32 %179)
  store i32* %180, i32** %29, align 8
  %181 = load i32*, i32** %29, align 8
  %182 = icmp eq i32* %181, null
  br i1 %182, label %183, label %184

183:                                              ; preds = %173
  br label %193

184:                                              ; preds = %173
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i8*, i8** %8, align 8
  %188 = load i32*, i32** %29, align 8
  %189 = call i32 @vlc_dictionary_insert(i32* %186, i8* %187, i32* %188)
  %190 = load i32*, i32** %13, align 8
  %191 = load i32*, i32** %29, align 8
  %192 = call i32 @vlc_rd_add_item(i32* %190, i32* %191)
  br label %193

193:                                              ; preds = %184, %183, %157, %150, %116
  %194 = load i8*, i8** %15, align 8
  %195 = call i32 @free(i8* %194)
  %196 = load i8*, i8** %16, align 8
  %197 = call i32 @free(i8* %196)
  %198 = load i8*, i8** %17, align 8
  %199 = call i32 @free(i8* %198)
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @avahi_string_list_find(i32*, i8*) #1

declare dso_local i64 @avahi_string_list_get_pair(i32*, i8**, i8**, i32*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @avahi_free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*, i8*, ...) #1

declare dso_local i32* @vlc_renderer_item_new(i8*, i8*, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @vlc_dictionary_insert(i32*, i8*, i32*) #1

declare dso_local i32 @vlc_rd_add_item(i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
