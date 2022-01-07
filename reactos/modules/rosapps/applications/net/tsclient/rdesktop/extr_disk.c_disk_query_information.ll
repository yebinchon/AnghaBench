; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_disk.c_disk_query_information.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_disk.c_disk_query_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.stat = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@STATUS_ACCESS_DENIED = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_HIDDEN = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_READONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"IRP Query (File) Information class: 0x%x\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @disk_query_information(%struct.TYPE_5__* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.stat, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %14, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @fstat(i64 %23, %struct.stat* %13)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @out_uint8(i32 %28, i32 0)
  %30 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %30, i32* %5, align 4
  br label %153

31:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @S_ISDIR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %38 = load i32, i32* %10, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i8*, i8** %14, align 8
  %42 = call i8* @strrchr(i8* %41, i8 signext 47)
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  store i8* %43, i8** %15, align 8
  %44 = load i8*, i8** %15, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load i8*, i8** %15, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 46
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* @FILE_ATTRIBUTE_HIDDEN, align 4
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %52, %46, %40
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %61 = load i32, i32* %10, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %59, %56
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @S_IWUSR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %71 = load i32, i32* %10, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %69, %63
  %74 = load i32, i32* %8, align 4
  switch i32 %74, label %147 [
    i32 130, label %75
    i32 128, label %114
    i32 129, label %141
  ]

75:                                               ; preds = %73
  %76 = call i32 @get_create_time(%struct.stat* %13)
  %77 = call i32 @seconds_since_1970_to_filetime(i32 %76, i32* %11, i32* %12)
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @out_uint32_le(i32 %78, i32 %79)
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @out_uint32_le(i32 %81, i32 %82)
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @seconds_since_1970_to_filetime(i32 %85, i32* %11, i32* %12)
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @out_uint32_le(i32 %87, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @out_uint32_le(i32 %90, i32 %91)
  %93 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @seconds_since_1970_to_filetime(i32 %94, i32* %11, i32* %12)
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @out_uint32_le(i32 %96, i32 %97)
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @out_uint32_le(i32 %99, i32 %100)
  %102 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @seconds_since_1970_to_filetime(i32 %103, i32* %11, i32* %12)
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @out_uint32_le(i32 %105, i32 %106)
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @out_uint32_le(i32 %108, i32 %109)
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @out_uint32_le(i32 %111, i32 %112)
  br label %151

114:                                              ; preds = %73
  %115 = load i32, i32* %9, align 4
  %116 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @out_uint32_le(i32 %115, i32 %117)
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @out_uint32_le(i32 %119, i32 0)
  %121 = load i32, i32* %9, align 4
  %122 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @out_uint32_le(i32 %121, i32 %123)
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @out_uint32_le(i32 %125, i32 0)
  %127 = load i32, i32* %9, align 4
  %128 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @out_uint32_le(i32 %127, i32 %129)
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @out_uint8(i32 %131, i32 0)
  %133 = load i32, i32* %9, align 4
  %134 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @S_ISDIR(i32 %135)
  %137 = icmp ne i64 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i32 1, i32 0
  %140 = call i32 @out_uint8(i32 %133, i32 %139)
  br label %151

141:                                              ; preds = %73
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @out_uint32_le(i32 %142, i32 %143)
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @out_uint32_le(i32 %145, i32 0)
  br label %151

147:                                              ; preds = %73
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @unimpl(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %150, i32* %5, align 4
  br label %153

151:                                              ; preds = %141, %114, %75
  %152 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %151, %147, %26
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i64 @fstat(i64, %struct.stat*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @out_uint8(i32, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @seconds_since_1970_to_filetime(i32, i32*, i32*) #1

declare dso_local i32 @get_create_time(%struct.stat*) #1

declare dso_local i32 @out_uint32_le(i32, i32) #1

declare dso_local i32 @unimpl(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
