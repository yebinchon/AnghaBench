; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_zfs_send_resume_token_to_nvlist.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_zfs_send_resume_token_to_nvlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@.str = private unnamed_addr constant [14 x i8] c"%u-%llx-%llx-\00", align 1
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"resume token is corrupt (invalid format)\00", align 1
@ZFS_SEND_RESUME_TOKEN_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"resume token is corrupt (invalid version %u)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%2hhx\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"resume token is corrupt (payload is not hex-encoded)\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"resume token is corrupt (incorrect checksum)\00", align 1
@Z_OK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [47 x i8] c"resume token is corrupt (decompression failed)\00", align 1
@KM_SLEEP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [47 x i8] c"resume token is corrupt (nvlist_unpack failed)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @zfs_send_resume_token_to_nvlist(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_3__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 (i8*, i8*, ...) @sscanf(i8* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %6, i64* %9, i64* %10)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 3
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @TEXT_DOMAIN, align 4
  %25 = call i32 @dgettext(i32 %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %23, i32 %25)
  store i32* null, i32** %3, align 8
  br label %135

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ZFS_SEND_RESUME_TOKEN_VERSION, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @TEXT_DOMAIN, align 4
  %34 = call i32 @dgettext(i32 %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %32, i32 %34, i32 %35)
  store i32* null, i32** %3, align 8
  br label %135

37:                                               ; preds = %27
  %38 = load i8*, i8** %5, align 8
  %39 = call i8* @strrchr(i8* %38, i8 signext 45)
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  store i8* %40, i8** %5, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = sdiv i32 %42, 2
  store i32 %43, i32* %11, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = call i8* @zfs_alloc(i32* %44, i64 %46)
  store i8* %47, i8** %12, align 8
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %73, %37
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %48
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = mul nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  %58 = load i8*, i8** %12, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = call i32 (i8*, i8*, ...) @sscanf(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %72

65:                                               ; preds = %52
  %66 = load i8*, i8** %12, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* @TEXT_DOMAIN, align 4
  %70 = call i32 @dgettext(i32 %69, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %71 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %68, i32 %70)
  store i32* null, i32** %3, align 8
  br label %135

72:                                               ; preds = %52
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %48

76:                                               ; preds = %48
  %77 = load i8*, i8** %12, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @fletcher_4_native_varsize(i8* %77, i32 %78, %struct.TYPE_3__* %13)
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %9, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %76
  %87 = load i8*, i8** %12, align 8
  %88 = call i32 @free(i8* %87)
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* @TEXT_DOMAIN, align 4
  %91 = call i32 @dgettext(i32 %90, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %92 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %89, i32 %91)
  store i32* null, i32** %3, align 8
  br label %135

93:                                               ; preds = %76
  %94 = load i32*, i32** %4, align 8
  %95 = load i64, i64* %10, align 8
  %96 = call i8* @zfs_alloc(i32* %94, i64 %95)
  store i8* %96, i8** %14, align 8
  %97 = load i64, i64* %10, align 8
  store i64 %97, i64* %15, align 8
  %98 = load i8*, i8** %14, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i64 @uncompress(i8* %98, i64* %15, i8* %99, i32 %100)
  %102 = load i64, i64* @Z_OK, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %93
  %105 = load i64, i64* %15, align 8
  %106 = load i64, i64* %10, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %104, %93
  %109 = load i8*, i8** %14, align 8
  %110 = call i32 @free(i8* %109)
  %111 = load i8*, i8** %12, align 8
  %112 = call i32 @free(i8* %111)
  %113 = load i32*, i32** %4, align 8
  %114 = load i32, i32* @TEXT_DOMAIN, align 4
  %115 = call i32 @dgettext(i32 %114, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  %116 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %113, i32 %115)
  store i32* null, i32** %3, align 8
  br label %135

117:                                              ; preds = %104
  %118 = load i8*, i8** %14, align 8
  %119 = load i64, i64* %10, align 8
  %120 = load i32, i32* @KM_SLEEP, align 4
  %121 = call i32 @nvlist_unpack(i8* %118, i64 %119, i32** %16, i32 %120)
  store i32 %121, i32* %17, align 4
  %122 = load i8*, i8** %14, align 8
  %123 = call i32 @free(i8* %122)
  %124 = load i8*, i8** %12, align 8
  %125 = call i32 @free(i8* %124)
  %126 = load i32, i32* %17, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %117
  %129 = load i32*, i32** %4, align 8
  %130 = load i32, i32* @TEXT_DOMAIN, align 4
  %131 = call i32 @dgettext(i32 %130, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  %132 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %129, i32 %131)
  store i32* null, i32** %3, align 8
  br label %135

133:                                              ; preds = %117
  %134 = load i32*, i32** %16, align 8
  store i32* %134, i32** %3, align 8
  br label %135

135:                                              ; preds = %133, %128, %108, %86, %65, %31, %22
  %136 = load i32*, i32** %3, align 8
  ret i32* %136
}

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i32 @zfs_error_aux(i32*, i32, ...) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @zfs_alloc(i32*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fletcher_4_native_varsize(i8*, i32, %struct.TYPE_3__*) #1

declare dso_local i64 @uncompress(i8*, i64*, i8*, i32) #1

declare dso_local i32 @nvlist_unpack(i8*, i64, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
