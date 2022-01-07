; ModuleID = '/home/carl/AnghaBench/tengine/src/event/extr_ngx_event_openssl.c_ngx_ssl_dhparam.c'
source_filename = "/home/carl/AnghaBench/tengine/src/event/extr_ngx_event_openssl.c_ngx_ssl_dhparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i64 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"BIO_new_file(\22%s\22) failed\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"PEM_read_bio_DHparams(\22%s\22) failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_ssl_dhparam(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @NGX_OK, align 8
  store i64 %15, i64* %4, align 8
  br label %72

16:                                               ; preds = %3
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = call i64 @ngx_conf_full_name(i32 %19, %struct.TYPE_8__* %20, i32 1)
  %22 = load i64, i64* @NGX_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i64, i64* @NGX_ERROR, align 8
  store i64 %25, i64* %4, align 8
  br label %72

26:                                               ; preds = %16
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32* @BIO_new_file(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %26
  %35 = load i32, i32* @NGX_LOG_EMERG, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @ngx_ssl_error(i32 %35, i32 %38, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  %43 = load i64, i64* @NGX_ERROR, align 8
  store i64 %43, i64* %4, align 8
  br label %72

44:                                               ; preds = %26
  %45 = load i32*, i32** %9, align 8
  %46 = call i32* @PEM_read_bio_DHparams(i32* %45, i32* null, i32* null, i32* null)
  store i32* %46, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load i32, i32* @NGX_LOG_EMERG, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @ngx_ssl_error(i32 %50, i32 %53, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %56)
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @BIO_free(i32* %58)
  %60 = load i64, i64* @NGX_ERROR, align 8
  store i64 %60, i64* %4, align 8
  br label %72

61:                                               ; preds = %44
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @SSL_CTX_set_tmp_dh(i32 %64, i32* %65)
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @DH_free(i32* %67)
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @BIO_free(i32* %69)
  %71 = load i64, i64* @NGX_OK, align 8
  store i64 %71, i64* %4, align 8
  br label %72

72:                                               ; preds = %61, %49, %34, %24, %14
  %73 = load i64, i64* %4, align 8
  ret i64 %73
}

declare dso_local i64 @ngx_conf_full_name(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32* @BIO_new_file(i8*, i8*) #1

declare dso_local i32 @ngx_ssl_error(i32, i32, i32, i8*, i64) #1

declare dso_local i32* @PEM_read_bio_DHparams(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @SSL_CTX_set_tmp_dh(i32, i32*) #1

declare dso_local i32 @DH_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
