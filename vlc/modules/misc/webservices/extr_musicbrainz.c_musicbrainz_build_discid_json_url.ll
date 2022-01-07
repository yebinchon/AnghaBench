; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/webservices/extr_musicbrainz.c_musicbrainz_build_discid_json_url.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/webservices/extr_musicbrainz.c_musicbrainz_build_discid_json_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [95 x i8] c"https://%s/ws/2/discid/%s?fmt=json&inc=artist-credits+recordings+release-groups&cdstubs=no%s%s\00", align 1
@MUSICBRAINZ_DEFAULT_SERVER = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*)* @musicbrainz_build_discid_json_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @musicbrainz_build_discid_json_url(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  br label %15

13:                                               ; preds = %3
  %14 = load i8*, i8** @MUSICBRAINZ_DEFAULT_SERVER, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i8* [ %12, %11 ], [ %14, %13 ]
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i8*, i8** %7, align 8
  br label %27

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i8* [ %25, %24 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %26 ]
  %29 = call i32 @asprintf(i8** %8, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %17, i8* %21, i8* %28)
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i8*, i8** %8, align 8
  store i8* %32, i8** %4, align 8
  br label %34

33:                                               ; preds = %27
  store i8* null, i8** %4, align 8
  br label %34

34:                                               ; preds = %33, %31
  %35 = load i8*, i8** %4, align 8
  ret i8* %35
}

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
