; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_core_module.c_ngx_http_get_forwarded_addr_internal.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_core_module.c_ngx_http_get_forwarded_addr_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, %struct.TYPE_7__*, i8*, i64, i32*, i32)* @ngx_http_get_forwarded_addr_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_get_forwarded_addr_internal(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i8* %2, i64 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_7__, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %12, align 8
  %21 = call i64 @ngx_cidr_match(i32 %19, i32* %20)
  %22 = load i64, i64* @NGX_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %25, i64* %7, align 8
  br label %122

26:                                               ; preds = %6
  %27 = load i8*, i8** %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = getelementptr inbounds i8, i8* %29, i64 -1
  store i8* %30, i8** %14, align 8
  br label %31

31:                                               ; preds = %47, %26
  %32 = load i8*, i8** %14, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ugt i8* %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load i8*, i8** %14, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 32
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i8*, i8** %14, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 44
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %52

46:                                               ; preds = %40, %35
  br label %47

47:                                               ; preds = %46
  %48 = load i8*, i8** %14, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 -1
  store i8* %49, i8** %14, align 8
  %50 = load i64, i64* %11, align 8
  %51 = add i64 %50, -1
  store i64 %51, i64* %11, align 8
  br label %31

52:                                               ; preds = %45, %31
  br label %53

53:                                               ; preds = %71, %52
  %54 = load i8*, i8** %14, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = icmp ugt i8* %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = load i8*, i8** %14, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 32
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i8*, i8** %14, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 44
  br i1 %66, label %67, label %70

67:                                               ; preds = %62, %57
  %68 = load i8*, i8** %14, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %14, align 8
  br label %74

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70
  %72 = load i8*, i8** %14, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 -1
  store i8* %73, i8** %14, align 8
  br label %53

74:                                               ; preds = %67, %53
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %14, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = sub i64 %79, %84
  %86 = call i64 @ngx_parse_addr_port(i32 %77, %struct.TYPE_7__* %16, i8* %78, i64 %85)
  %87 = load i64, i64* @NGX_OK, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %74
  %90 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %90, i64* %7, align 8
  br label %122

91:                                               ; preds = %74
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %93 = bitcast %struct.TYPE_7__* %92 to i8*
  %94 = bitcast %struct.TYPE_7__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %93, i8* align 4 %94, i64 4, i1 false)
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %91
  %98 = load i8*, i8** %14, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = icmp ugt i8* %98, %99
  br i1 %100, label %101, label %120

101:                                              ; preds = %97
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = load i8*, i8** %14, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 -1
  %107 = load i8*, i8** %10, align 8
  %108 = ptrtoint i8* %106 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = load i32*, i32** %12, align 8
  %112 = call i64 @ngx_http_get_forwarded_addr_internal(%struct.TYPE_6__* %102, %struct.TYPE_7__* %103, i8* %104, i64 %110, i32* %111, i32 1)
  store i64 %112, i64* %15, align 8
  %113 = load i64, i64* %15, align 8
  %114 = load i64, i64* @NGX_DECLINED, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %101
  %117 = load i64, i64* @NGX_DONE, align 8
  store i64 %117, i64* %7, align 8
  br label %122

118:                                              ; preds = %101
  %119 = load i64, i64* %15, align 8
  store i64 %119, i64* %7, align 8
  br label %122

120:                                              ; preds = %97, %91
  %121 = load i64, i64* @NGX_OK, align 8
  store i64 %121, i64* %7, align 8
  br label %122

122:                                              ; preds = %120, %118, %116, %89, %24
  %123 = load i64, i64* %7, align 8
  ret i64 %123
}

declare dso_local i64 @ngx_cidr_match(i32, i32*) #1

declare dso_local i64 @ngx_parse_addr_port(i32, %struct.TYPE_7__*, i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
