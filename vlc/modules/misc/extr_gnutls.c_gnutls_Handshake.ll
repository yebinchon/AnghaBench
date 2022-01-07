; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/extr_gnutls.c_gnutls_Handshake.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/extr_gnutls.c_gnutls_Handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"TLS handshake error: %s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"TLS handshake complete\00", align 1
@GNUTLS_SFLAGS_SAFE_RENEGOTIATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c" - safe renegotiation (RFC5746) enabled\00", align 1
@GNUTLS_SFLAGS_EXT_MASTER_SECRET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c" - extended master secret (RFC7627) enabled\00", align 1
@GNUTLS_SFLAGS_ETM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c" - encrypt then MAC (RFC7366) enabled\00", align 1
@GNUTLS_SFLAGS_FALSE_START = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c" - false start (RFC7918) enabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**)* @gnutls_Handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gnutls_Handshake(i32* %0, i8** noalias %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %6, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @gnutls_handshake(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @gnutls_error_is_fatal(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @gnutls_strerror(i32 %27)
  %29 = call i32 @msg_Err(i32* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 -1, i32* %3, align 4
  br label %114

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  switch i32 %31, label %37 [
    i32 128, label %32
    i32 130, label %33
    i32 129, label %33
  ]

32:                                               ; preds = %30
  br label %42

33:                                               ; preds = %30, %30
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @gnutls_record_get_direction(i32 %34)
  %36 = add nsw i32 1, %35
  store i32 %36, i32* %3, align 4
  br label %114

37:                                               ; preds = %30
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @gnutls_strerror(i32 %39)
  %41 = call i32 @msg_Warn(i32* %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i32 1, i32* %3, align 4
  br label %114

42:                                               ; preds = %32
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @msg_Dbg(i32* %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @gnutls_session_get_flags(i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @GNUTLS_SFLAGS_SAFE_RENEGOTIATION, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @msg_Dbg(i32* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %42
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @GNUTLS_SFLAGS_EXT_MASTER_SECRET, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @msg_Dbg(i32* %60, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @GNUTLS_SFLAGS_ETM, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @msg_Dbg(i32* %68, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @GNUTLS_SFLAGS_FALSE_START, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @msg_Dbg(i32* %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i8**, i8*** %5, align 8
  %80 = icmp ne i8** %79, null
  br i1 %80, label %81, label %113

81:                                               ; preds = %78
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @gnutls_alpn_get_selected_protocol(i32 %82, %struct.TYPE_5__* %11)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %110

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32* @memchr(i64 %88, i32 0, i32 %90)
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 -1, i32* %3, align 4
  br label %114

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i8* @strndup(i8* %97, i32 %99)
  %101 = load i8**, i8*** %5, align 8
  store i8* %100, i8** %101, align 8
  %102 = load i8**, i8*** %5, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = icmp eq i8* %103, null
  %105 = zext i1 %104 to i32
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %94
  store i32 -1, i32* %3, align 4
  br label %114

109:                                              ; preds = %94
  br label %112

110:                                              ; preds = %81
  %111 = load i8**, i8*** %5, align 8
  store i8* null, i8** %111, align 8
  br label %112

112:                                              ; preds = %110, %109
  br label %113

113:                                              ; preds = %112, %78
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %108, %93, %37, %33, %25
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @gnutls_handshake(i32) #1

declare dso_local i64 @gnutls_error_is_fatal(i32) #1

declare dso_local i32 @msg_Err(i32*, i8*, i32) #1

declare dso_local i32 @gnutls_strerror(i32) #1

declare dso_local i32 @gnutls_record_get_direction(i32) #1

declare dso_local i32 @msg_Warn(i32*, i8*, i32) #1

declare dso_local i32 @msg_Dbg(i32*, i8*) #1

declare dso_local i32 @gnutls_session_get_flags(i32) #1

declare dso_local i32 @gnutls_alpn_get_selected_protocol(i32, %struct.TYPE_5__*) #1

declare dso_local i32* @memchr(i64, i32, i32) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
