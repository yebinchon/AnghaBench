; ModuleID = '/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_auth_http_module.c_ngx_mail_auth_http_escape.c'
source_filename = "/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_auth_http_module.c_ngx_mail_auth_http_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i64 }

@NGX_ESCAPE_MAIL_AUTH = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, %struct.TYPE_4__*)* @ngx_mail_auth_http_escape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_mail_auth_http_escape(i32* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @NGX_ESCAPE_MAIL_AUTH, align 4
  %17 = call i64 @ngx_escape_uri(i32* null, i32* %12, i64 %15, i32 %16)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = bitcast %struct.TYPE_4__* %21 to i8*
  %24 = bitcast %struct.TYPE_4__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 16, i1 false)
  %25 = load i32, i32* @NGX_OK, align 4
  store i32 %25, i32* %4, align 4
  br label %58

26:                                               ; preds = %3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = mul i64 %30, 2
  %32 = add i64 %29, %31
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32* @ngx_pnalloc(i32* %35, i64 %38)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %26
  %43 = load i32, i32* @NGX_ERROR, align 4
  store i32 %43, i32* %4, align 4
  br label %58

44:                                               ; preds = %26
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @NGX_ESCAPE_MAIL_AUTH, align 4
  %53 = call i64 @ngx_escape_uri(i32* %45, i32* %48, i64 %51, i32 %52)
  %54 = load i32*, i32** %8, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32* %54, i32** %56, align 8
  %57 = load i32, i32* @NGX_OK, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %44, %42, %20
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @ngx_escape_uri(i32*, i32*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @ngx_pnalloc(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
