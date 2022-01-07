; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_security.c_get_top_level_sd.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_security.c_get_top_level_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@SECURITY_DESCRIPTOR_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"RtlCreateSecurityDescriptor returned %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"uid_to_sid returned %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"RtlSetOwnerSecurityDescriptor returned %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"RtlSetGroupSecurityDescriptor returned %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"RtlSetDaclSecurityDescriptor returned %08x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@STATUS_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [45 x i8] c"RtlAbsoluteToSelfRelativeSD 1 returned %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"RtlAbsoluteToSelfRelativeSD said SD is zero-length\0A\00", align 1
@PagedPool = common dso_local global i32 0, align 4
@ALLOC_TAG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"RtlAbsoluteToSelfRelativeSD 2 returned %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @get_top_level_sd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_top_level_sd(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %9 = load i32, i32* @SECURITY_DESCRIPTOR_REVISION, align 4
  %10 = call i64 @RtlCreateSecurityDescriptor(i32* %4, i32 %9)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @NT_SUCCESS(i64 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %15)
  br label %124

17:                                               ; preds = %1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @uid_to_sid(i32 %21, i32** %7)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @NT_SUCCESS(i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load i64, i64* %3, align 8
  %28 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  br label %124

29:                                               ; preds = %17
  %30 = load i32*, i32** %7, align 8
  %31 = call i64 @RtlSetOwnerSecurityDescriptor(i32* %4, i32* %30, i32 0)
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @NT_SUCCESS(i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i64, i64* %3, align 8
  %37 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  br label %124

38:                                               ; preds = %29
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @gid_to_sid(i32 %42, i32** %8)
  %44 = load i32*, i32** %8, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %38
  %47 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %124

48:                                               ; preds = %38
  %49 = load i32*, i32** %8, align 8
  %50 = call i64 @RtlSetGroupSecurityDescriptor(i32* %4, i32* %49, i32 0)
  store i64 %50, i64* %3, align 8
  %51 = load i64, i64* %3, align 8
  %52 = call i32 @NT_SUCCESS(i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i64, i64* %3, align 8
  %56 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %55)
  br label %124

57:                                               ; preds = %48
  %58 = call i32* (...) @load_default_acl()
  store i32* %58, i32** %6, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %124

63:                                               ; preds = %57
  %64 = load i32*, i32** %6, align 8
  %65 = call i64 @RtlSetDaclSecurityDescriptor(i32* %4, i32 1, i32* %64, i32 0)
  store i64 %65, i64* %3, align 8
  %66 = load i64, i64* %3, align 8
  %67 = call i32 @NT_SUCCESS(i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %63
  %70 = load i64, i64* %3, align 8
  %71 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i64 %70)
  br label %124

72:                                               ; preds = %63
  store i64 0, i64* %5, align 8
  %73 = call i64 @RtlAbsoluteToSelfRelativeSD(i32* %4, i32* null, i64* %5)
  store i64 %73, i64* %3, align 8
  %74 = load i64, i64* %3, align 8
  %75 = load i64, i64* @STATUS_SUCCESS, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i64, i64* %3, align 8
  %79 = load i64, i64* @STATUS_BUFFER_TOO_SMALL, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, i64* %3, align 8
  %83 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i64 %82)
  br label %124

84:                                               ; preds = %77, %72
  %85 = load i64, i64* %5, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = load i64, i64* %3, align 8
  %89 = load i64, i64* @STATUS_SUCCESS, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87, %84
  %92 = call i32 @TRACE(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  br label %124

93:                                               ; preds = %87
  %94 = load i32, i32* @PagedPool, align 4
  %95 = load i64, i64* %5, align 8
  %96 = load i32, i32* @ALLOC_TAG, align 4
  %97 = call i32* @ExAllocatePoolWithTag(i32 %94, i64 %95, i32 %96)
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i32* %97, i32** %99, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %93
  %105 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %124

106:                                              ; preds = %93
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = call i64 @RtlAbsoluteToSelfRelativeSD(i32* %4, i32* %109, i64* %5)
  store i64 %110, i64* %3, align 8
  %111 = load i64, i64* %3, align 8
  %112 = call i32 @NT_SUCCESS(i64 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %106
  %115 = load i64, i64* %3, align 8
  %116 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i64 %115)
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @ExFreePool(i32* %119)
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  store i32* null, i32** %122, align 8
  br label %124

123:                                              ; preds = %106
  br label %124

124:                                              ; preds = %123, %114, %104, %91, %81, %69, %61, %54, %46, %35, %26, %14
  %125 = load i32*, i32** %6, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32*, i32** %6, align 8
  %129 = call i32 @ExFreePool(i32* %128)
  br label %130

130:                                              ; preds = %127, %124
  %131 = load i32*, i32** %7, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32*, i32** %7, align 8
  %135 = call i32 @ExFreePool(i32* %134)
  br label %136

136:                                              ; preds = %133, %130
  %137 = load i32*, i32** %8, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32*, i32** %8, align 8
  %141 = call i32 @ExFreePool(i32* %140)
  br label %142

142:                                              ; preds = %139, %136
  ret void
}

declare dso_local i64 @RtlCreateSecurityDescriptor(i32*, i32) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i64 @uid_to_sid(i32, i32**) #1

declare dso_local i64 @RtlSetOwnerSecurityDescriptor(i32*, i32*, i32) #1

declare dso_local i32 @gid_to_sid(i32, i32**) #1

declare dso_local i64 @RtlSetGroupSecurityDescriptor(i32*, i32*, i32) #1

declare dso_local i32* @load_default_acl(...) #1

declare dso_local i64 @RtlSetDaclSecurityDescriptor(i32*, i32, i32*, i32) #1

declare dso_local i64 @RtlAbsoluteToSelfRelativeSD(i32*, i32*, i64*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32* @ExAllocatePoolWithTag(i32, i64, i32) #1

declare dso_local i32 @ExFreePool(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
