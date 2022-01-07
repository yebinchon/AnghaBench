; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse_init.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_parser = type { i32, %struct.TYPE_2__, i32, %struct.vlc_h2_parser_cbs*, i8* }
%struct.TYPE_2__ = type { i32*, i64, i32*, i64 }
%struct.vlc_h2_parser_cbs = type { i32 }

@vlc_h2_parse_preface = common dso_local global i32 0, align 4
@VLC_H2_MAX_HEADER_TABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_h2_parser* @vlc_h2_parse_init(i8* %0, %struct.vlc_h2_parser_cbs* %1) #0 {
  %3 = alloca %struct.vlc_h2_parser*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vlc_h2_parser_cbs*, align 8
  %6 = alloca %struct.vlc_h2_parser*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.vlc_h2_parser_cbs* %1, %struct.vlc_h2_parser_cbs** %5, align 8
  %7 = call %struct.vlc_h2_parser* @malloc(i32 64)
  store %struct.vlc_h2_parser* %7, %struct.vlc_h2_parser** %6, align 8
  %8 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %9 = icmp eq %struct.vlc_h2_parser* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.vlc_h2_parser* null, %struct.vlc_h2_parser** %3, align 8
  br label %53

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %17 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %16, i32 0, i32 4
  store i8* %15, i8** %17, align 8
  %18 = load %struct.vlc_h2_parser_cbs*, %struct.vlc_h2_parser_cbs** %5, align 8
  %19 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %20 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %19, i32 0, i32 3
  store %struct.vlc_h2_parser_cbs* %18, %struct.vlc_h2_parser_cbs** %20, align 8
  %21 = load i32, i32* @vlc_h2_parse_preface, align 4
  %22 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %23 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %25 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %28 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32* null, i32** %29, align 8
  %30 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %31 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @VLC_H2_MAX_HEADER_TABLE, align 4
  %34 = call i32* @hpack_decode_init(i32 %33)
  %35 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %36 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32* %34, i32** %37, align 8
  %38 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %39 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %14
  %47 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %48 = call i32 @free(%struct.vlc_h2_parser* %47)
  store %struct.vlc_h2_parser* null, %struct.vlc_h2_parser** %3, align 8
  br label %53

49:                                               ; preds = %14
  %50 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %51 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %50, i32 0, i32 0
  store i32 65535, i32* %51, align 8
  %52 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  store %struct.vlc_h2_parser* %52, %struct.vlc_h2_parser** %3, align 8
  br label %53

53:                                               ; preds = %49, %46, %13
  %54 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %3, align 8
  ret %struct.vlc_h2_parser* %54
}

declare dso_local %struct.vlc_h2_parser* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @hpack_decode_init(i32) #1

declare dso_local i32 @free(%struct.vlc_h2_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
