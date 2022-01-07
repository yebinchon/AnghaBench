; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_item.c_read_pixmap.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_item.c_read_pixmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_sni = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.swaybar_pixmap = type { i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"(iiay)\00", align 1
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%s %s: %s\00", align 1
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"%s %s no. of icons = 0\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"iiay\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ii\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"%s %s: found icon w:%d h:%d\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"%s %s: discard invalid icon w:%d h:%d\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"%s %s no. of icons = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.swaybar_sni*, i8*, %struct.TYPE_6__**)* @read_pixmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_pixmap(i32* %0, %struct.swaybar_sni* %1, i8* %2, %struct.TYPE_6__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.swaybar_sni*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.swaybar_pixmap*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.swaybar_sni* %1, %struct.swaybar_sni** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_6__** %3, %struct.TYPE_6__*** %9, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @sd_bus_message_enter_container(i32* %18, i8 signext 97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %4
  %23 = load i32, i32* @SWAY_ERROR, align 4
  %24 = load %struct.swaybar_sni*, %struct.swaybar_sni** %7, align 8
  %25 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sub nsw i32 0, %28
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 (i32, i8*, i32, i8*, ...) @sway_log(i32 %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %26, i8* %27, i32 %30)
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %5, align 4
  br label %196

33:                                               ; preds = %4
  %34 = load i32*, i32** %6, align 8
  %35 = call i64 @sd_bus_message_at_end(i32* %34, i32 0)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i32, i32* @SWAY_DEBUG, align 4
  %39 = load %struct.swaybar_sni*, %struct.swaybar_sni** %7, align 8
  %40 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 (i32, i8*, i32, i8*, ...) @sway_log(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %41, i8* %42)
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %5, align 4
  br label %196

45:                                               ; preds = %33
  %46 = call %struct.TYPE_6__* (...) @create_list()
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %11, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %48 = icmp ne %struct.TYPE_6__* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  store i32 -12, i32* %5, align 4
  br label %196

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %161, %50
  %52 = load i32*, i32** %6, align 8
  %53 = call i64 @sd_bus_message_at_end(i32* %52, i32 0)
  %54 = icmp ne i64 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %56, label %164

56:                                               ; preds = %51
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @sd_bus_message_enter_container(i32* %57, i8 signext 114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load i32, i32* @SWAY_ERROR, align 4
  %63 = load %struct.swaybar_sni*, %struct.swaybar_sni** %7, align 8
  %64 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sub nsw i32 0, %67
  %69 = call i32 @strerror(i32 %68)
  %70 = call i32 (i32, i8*, i32, i8*, ...) @sway_log(i32 %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %65, i8* %66, i32 %69)
  br label %192

71:                                               ; preds = %56
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @sd_bus_message_read(i32* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %12, i32* %13)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load i32, i32* @SWAY_ERROR, align 4
  %78 = load %struct.swaybar_sni*, %struct.swaybar_sni** %7, align 8
  %79 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sub nsw i32 0, %82
  %84 = call i32 @strerror(i32 %83)
  %85 = call i32 (i32, i8*, i32, i8*, ...) @sway_log(i32 %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %80, i8* %81, i32 %84)
  br label %192

86:                                               ; preds = %71
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @sd_bus_message_read_array(i32* %87, i8 signext 121, i8** %14, i64* %15)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %86
  %92 = load i32, i32* @SWAY_ERROR, align 4
  %93 = load %struct.swaybar_sni*, %struct.swaybar_sni** %7, align 8
  %94 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i8*, i8** %8, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sub nsw i32 0, %97
  %99 = call i32 @strerror(i32 %98)
  %100 = call i32 (i32, i8*, i32, i8*, ...) @sway_log(i32 %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %95, i8* %96, i32 %99)
  br label %192

101:                                              ; preds = %86
  %102 = load i32, i32* %13, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %152

104:                                              ; preds = %101
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %152

108:                                              ; preds = %104
  %109 = load i32, i32* @SWAY_DEBUG, align 4
  %110 = load %struct.swaybar_sni*, %struct.swaybar_sni** %7, align 8
  %111 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i8*, i8** %8, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %13, align 4
  %116 = call i32 (i32, i8*, i32, i8*, ...) @sway_log(i32 %109, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %112, i8* %113, i32 %114, i32 %115)
  %117 = load i64, i64* %15, align 8
  %118 = add i64 16, %117
  %119 = trunc i64 %118 to i32
  %120 = call %struct.swaybar_pixmap* @malloc(i32 %119)
  store %struct.swaybar_pixmap* %120, %struct.swaybar_pixmap** %16, align 8
  %121 = load i32, i32* %13, align 4
  %122 = load %struct.swaybar_pixmap*, %struct.swaybar_pixmap** %16, align 8
  %123 = getelementptr inbounds %struct.swaybar_pixmap, %struct.swaybar_pixmap* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  store i32 0, i32* %17, align 4
  br label %124

124:                                              ; preds = %145, %108
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %12, align 4
  %128 = mul nsw i32 %126, %127
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %148

130:                                              ; preds = %124
  %131 = load i8*, i8** %14, align 8
  %132 = bitcast i8* %131 to i32*
  %133 = load i32, i32* %17, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @ntohl(i32 %136)
  %138 = load %struct.swaybar_pixmap*, %struct.swaybar_pixmap** %16, align 8
  %139 = getelementptr inbounds %struct.swaybar_pixmap, %struct.swaybar_pixmap* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = inttoptr i64 %140 to i32*
  %142 = load i32, i32* %17, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %137, i32* %144, align 4
  br label %145

145:                                              ; preds = %130
  %146 = load i32, i32* %17, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %17, align 4
  br label %124

148:                                              ; preds = %124
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %150 = load %struct.swaybar_pixmap*, %struct.swaybar_pixmap** %16, align 8
  %151 = call i32 @list_add(%struct.TYPE_6__* %149, %struct.swaybar_pixmap* %150)
  br label %161

152:                                              ; preds = %104, %101
  %153 = load i32, i32* @SWAY_DEBUG, align 4
  %154 = load %struct.swaybar_sni*, %struct.swaybar_sni** %7, align 8
  %155 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i8*, i8** %8, align 8
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %13, align 4
  %160 = call i32 (i32, i8*, i32, i8*, ...) @sway_log(i32 %153, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %156, i8* %157, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %152, %148
  %162 = load i32*, i32** %6, align 8
  %163 = call i32 @sd_bus_message_exit_container(i32* %162)
  br label %51

164:                                              ; preds = %51
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp slt i32 %167, 1
  br i1 %168, label %169, label %176

169:                                              ; preds = %164
  %170 = load i32, i32* @SWAY_DEBUG, align 4
  %171 = load %struct.swaybar_sni*, %struct.swaybar_sni** %7, align 8
  %172 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i8*, i8** %8, align 8
  %175 = call i32 (i32, i8*, i32, i8*, ...) @sway_log(i32 %170, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %173, i8* %174)
  br label %192

176:                                              ; preds = %164
  %177 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = call i32 @list_free_items_and_destroy(%struct.TYPE_6__* %178)
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %181 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  store %struct.TYPE_6__* %180, %struct.TYPE_6__** %181, align 8
  %182 = load i32, i32* @SWAY_DEBUG, align 4
  %183 = load %struct.swaybar_sni*, %struct.swaybar_sni** %7, align 8
  %184 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i8*, i8** %8, align 8
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 (i32, i8*, i32, i8*, ...) @sway_log(i32 %182, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %185, i8* %186, i32 %189)
  %191 = load i32, i32* %10, align 4
  store i32 %191, i32* %5, align 4
  br label %196

192:                                              ; preds = %169, %91, %76, %61
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %194 = call i32 @list_free_items_and_destroy(%struct.TYPE_6__* %193)
  %195 = load i32, i32* %10, align 4
  store i32 %195, i32* %5, align 4
  br label %196

196:                                              ; preds = %192, %176, %49, %37, %22
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local i32 @sd_bus_message_enter_container(i32*, i8 signext, i8*) #1

declare dso_local i32 @sway_log(i32, i8*, i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @sd_bus_message_at_end(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @create_list(...) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @sd_bus_message_read_array(i32*, i8 signext, i8**, i64*) #1

declare dso_local %struct.swaybar_pixmap* @malloc(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @list_add(%struct.TYPE_6__*, %struct.swaybar_pixmap*) #1

declare dso_local i32 @sd_bus_message_exit_container(i32*) #1

declare dso_local i32 @list_free_items_and_destroy(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
