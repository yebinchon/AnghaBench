; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_resolver.c_ngx_resolver_copy.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_resolver.c_ngx_resolver_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"name is out of response\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"compression pointers loop\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, i32*, i32*, i32*)* @ngx_resolver_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_resolver_copy(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i32*, i32** %10, align 8
  store i32* %18, i32** %13, align 8
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %19

19:                                               ; preds = %59, %5
  %20 = load i32, i32* %16, align 4
  %21 = icmp slt i32 %20, 128
  br i1 %21, label %22, label %62

22:                                               ; preds = %19
  %23 = load i32*, i32** %13, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %13, align 8
  %25 = load i32, i32* %23, align 4
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %73

29:                                               ; preds = %22
  %30 = load i32, i32* %17, align 4
  %31 = and i32 %30, 192
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32, i32* %17, align 4
  %35 = and i32 %34, 63
  %36 = shl i32 %35, 8
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %36, %38
  store i32 %39, i32* %17, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %17, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32* %43, i32** %13, align 8
  br label %53

44:                                               ; preds = %29
  %45 = load i32, i32* %17, align 4
  %46 = add nsw i32 1, %45
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %15, align 4
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* %17, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32* %52, i32** %13, align 8
  br label %53

53:                                               ; preds = %44, %33
  %54 = load i32*, i32** %13, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = icmp uge i32* %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %63

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %16, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %16, align 4
  br label %19

62:                                               ; preds = %19
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %63

63:                                               ; preds = %62, %57
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %12, align 8
  %71 = call i32 @ngx_log_error(i32 %66, i32 %69, i32 0, i8* %70)
  %72 = load i32, i32* @NGX_ERROR, align 4
  store i32 %72, i32* %6, align 4
  br label %157

73:                                               ; preds = %28
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %75 = icmp eq %struct.TYPE_7__* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* @NGX_OK, align 4
  store i32 %77, i32* %6, align 4
  br label %157

78:                                               ; preds = %73
  %79 = load i32, i32* %15, align 4
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %83 = call i32 @ngx_str_null(%struct.TYPE_7__* %82)
  %84 = load i32, i32* @NGX_OK, align 4
  store i32 %84, i32* %6, align 4
  br label %157

85:                                               ; preds = %78
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = load i32, i32* %15, align 4
  %88 = call i32* @ngx_resolver_alloc(%struct.TYPE_8__* %86, i32 %87)
  store i32* %88, i32** %14, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @NGX_ERROR, align 4
  store i32 %92, i32* %6, align 4
  br label %157

93:                                               ; preds = %85
  %94 = load i32*, i32** %14, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store i32* %94, i32** %96, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %10, align 8
  %99 = load i32, i32* %97, align 4
  store i32 %99, i32* %17, align 4
  br label %100

100:                                              ; preds = %156, %93
  %101 = load i32, i32* %17, align 4
  %102 = and i32 %101, 192
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %100
  %105 = load i32, i32* %17, align 4
  %106 = and i32 %105, 63
  %107 = shl i32 %106, 8
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %107, %109
  store i32 %110, i32* %17, align 4
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %17, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32* %114, i32** %10, align 8
  %115 = load i32*, i32** %10, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %10, align 8
  %117 = load i32, i32* %115, align 4
  store i32 %117, i32* %17, align 4
  br label %140

118:                                              ; preds = %100
  %119 = load i32*, i32** %14, align 8
  %120 = load i32*, i32** %10, align 8
  %121 = load i32, i32* %17, align 4
  %122 = call i32 @ngx_strlow(i32* %119, i32* %120, i32 %121)
  %123 = load i32, i32* %17, align 4
  %124 = load i32*, i32** %14, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32* %126, i32** %14, align 8
  %127 = load i32, i32* %17, align 4
  %128 = load i32*, i32** %10, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %10, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %10, align 8
  %133 = load i32, i32* %131, align 4
  store i32 %133, i32* %17, align 4
  %134 = load i32, i32* %17, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %118
  %137 = load i32*, i32** %14, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %14, align 8
  store i32 46, i32* %137, align 4
  br label %139

139:                                              ; preds = %136, %118
  br label %140

140:                                              ; preds = %139, %104
  %141 = load i32, i32* %17, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %140
  %144 = load i32*, i32** %14, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = ptrtoint i32* %144 to i64
  %149 = ptrtoint i32* %147 to i64
  %150 = sub i64 %148, %149
  %151 = sdiv exact i64 %150, 4
  %152 = trunc i64 %151 to i32
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* @NGX_OK, align 4
  store i32 %155, i32* %6, align 4
  br label %157

156:                                              ; preds = %140
  br label %100

157:                                              ; preds = %143, %91, %81, %76, %63
  %158 = load i32, i32* %6, align 4
  ret i32 %158
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_str_null(%struct.TYPE_7__*) #1

declare dso_local i32* @ngx_resolver_alloc(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ngx_strlow(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
