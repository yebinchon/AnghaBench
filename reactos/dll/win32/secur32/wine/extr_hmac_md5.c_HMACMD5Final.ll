; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/secur32/wine/extr_hmac_md5.c_HMACMD5Final.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/secur32/wine/extr_hmac_md5.c_HMACMD5Final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HMACMD5Final(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca [16 x i8], align 16
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %9 = call i32 @MD5Final(%struct.TYPE_7__* %8)
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @memcpy(i8* %10, i32 %14, i32 16)
  %16 = call i32 @MD5Init(%struct.TYPE_7__* %5)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @MD5Update(%struct.TYPE_7__* %5, i8* %19, i32 64)
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %22 = call i32 @MD5Update(%struct.TYPE_7__* %5, i8* %21, i32 16)
  %23 = call i32 @MD5Final(%struct.TYPE_7__* %5)
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @memcpy(i8* %24, i32 %26, i32 16)
  ret void
}

declare dso_local i32 @MD5Final(%struct.TYPE_7__*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @MD5Init(%struct.TYPE_7__*) #1

declare dso_local i32 @MD5Update(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
