; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headers_in.c_ngx_http_set_user_agent_header.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headers_in.c_ngx_http_set_user_agent_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i8* }

@.str = private unnamed_addr constant [6 x i8] c"MSIE \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"SV1\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Opera\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Gecko/\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Chrome/\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Safari/\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Mac OS X\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Konqueror\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, %struct.TYPE_9__*)* @ngx_http_set_user_agent_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_set_user_agent_header(%struct.TYPE_10__* %0, i32* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 6
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  store i32 0, i32* %21, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  store i32 0, i32* %24, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 4
  store i32 0, i32* %27, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 5
  store i32 0, i32* %30, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %3
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = call i32 @ngx_http_set_builtin_header(%struct.TYPE_10__* %36, i32* %37, %struct.TYPE_9__* %38)
  store i32 %39, i32* %4, align 4
  br label %158

40:                                               ; preds = %3
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i8* @ngx_strstrn(i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %87

48:                                               ; preds = %40
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 7
  %51 = load i8*, i8** %8, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  %56 = icmp ult i8* %50, %55
  br i1 %56, label %57, label %87

57:                                               ; preds = %48
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 6
  store i32 1, i32* %60, align 4
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 6
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 46
  br i1 %65, label %66, label %86

66:                                               ; preds = %57
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 5
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  switch i32 %70, label %85 [
    i32 52, label %71
    i32 53, label %71
    i32 54, label %75
  ]

71:                                               ; preds = %66, %66
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  br label %85

75:                                               ; preds = %66
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 8
  %78 = call i8* @ngx_strstrn(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32 1, i32* %83, align 4
  br label %84

84:                                               ; preds = %80, %75
  br label %85

85:                                               ; preds = %66, %84, %71
  br label %86

86:                                               ; preds = %85, %57
  br label %87

87:                                               ; preds = %86, %48, %40
  %88 = load i8*, i8** %8, align 8
  %89 = call i8* @ngx_strstrn(i8* %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 6
  store i32 0, i32* %97, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %91, %87
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %153, label %107

107:                                              ; preds = %101
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %153, label %113

113:                                              ; preds = %107
  %114 = load i8*, i8** %8, align 8
  %115 = call i8* @ngx_strstrn(i8* %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  store i32 1, i32* %120, align 4
  br label %152

121:                                              ; preds = %113
  %122 = load i8*, i8** %8, align 8
  %123 = call i8* @ngx_strstrn(i8* %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 3
  store i32 1, i32* %128, align 4
  br label %151

129:                                              ; preds = %121
  %130 = load i8*, i8** %8, align 8
  %131 = call i8* @ngx_strstrn(i8* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 6)
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %141

133:                                              ; preds = %129
  %134 = load i8*, i8** %8, align 8
  %135 = call i8* @ngx_strstrn(i8* %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 7)
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 4
  store i32 1, i32* %140, align 4
  br label %150

141:                                              ; preds = %133, %129
  %142 = load i8*, i8** %8, align 8
  %143 = call i8* @ngx_strstrn(i8* %142, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 8)
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 5
  store i32 1, i32* %148, align 4
  br label %149

149:                                              ; preds = %145, %141
  br label %150

150:                                              ; preds = %149, %137
  br label %151

151:                                              ; preds = %150, %125
  br label %152

152:                                              ; preds = %151, %117
  br label %153

153:                                              ; preds = %152, %107, %101
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %155 = load i32*, i32** %6, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %157 = call i32 @ngx_http_set_builtin_header(%struct.TYPE_10__* %154, i32* %155, %struct.TYPE_9__* %156)
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %153, %35
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @ngx_http_set_builtin_header(%struct.TYPE_10__*, i32*, %struct.TYPE_9__*) #1

declare dso_local i8* @ngx_strstrn(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
