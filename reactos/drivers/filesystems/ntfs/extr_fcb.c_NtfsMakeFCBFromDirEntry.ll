; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_fcb.c_NtfsMakeFCBFromDirEntry.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_fcb.c_NtfsMakeFCBFromDirEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i8*, i32, i32, i8*, %struct.TYPE_29__, %struct.TYPE_33__ }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_32__, %struct.TYPE_31__, %struct.TYPE_30__ }
%struct.TYPE_32__ = type { i8* }
%struct.TYPE_31__ = type { i8* }
%struct.TYPE_30__ = type { i8* }
%struct.TYPE_34__ = type { i64*, i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_38__ = type { i32, i32, i32 }
%struct.TYPE_35__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"NtfsMakeFCBFromDirEntry(%p, %p, %wZ, %p, %p, %p)\0A\00", align 1
@STATUS_OBJECT_NAME_NOT_FOUND = common dso_local global i32 0, align 4
@STATUS_OBJECT_NAME_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 92, i32 0], align 4
@UNICODE_NULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@FILENAME_ATTRIBUTE = common dso_local global i32 0, align 4
@NameLength = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NtfsMakeFCBFromDirEntry(i32 %0, %struct.TYPE_36__* %1, %struct.TYPE_34__* %2, i8* %3, %struct.TYPE_37__* %4, i8* %5, %struct.TYPE_36__** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_36__*, align 8
  %11 = alloca %struct.TYPE_34__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_37__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_36__**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_38__*, align 8
  %19 = alloca %struct.TYPE_35__*, align 8
  %20 = alloca %struct.TYPE_36__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.TYPE_36__* %1, %struct.TYPE_36__** %10, align 8
  store %struct.TYPE_34__* %2, %struct.TYPE_34__** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.TYPE_37__* %4, %struct.TYPE_37__** %13, align 8
  store i8* %5, i8** %14, align 8
  store %struct.TYPE_36__** %6, %struct.TYPE_36__*** %15, align 8
  %24 = load i32, i32* @MAX_PATH, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %16, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %17, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %30 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %33 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %15, align 8
  %34 = call i32 @DPRINT(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %28, %struct.TYPE_36__* %29, %struct.TYPE_34__* %30, i8* %31, %struct.TYPE_37__* %32, %struct.TYPE_36__** %33)
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %37 = call %struct.TYPE_38__* @GetBestFileNameFromRecord(i32 %35, %struct.TYPE_37__* %36)
  store %struct.TYPE_38__* %37, %struct.TYPE_38__** %18, align 8
  %38 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %39 = icmp ne %struct.TYPE_38__* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %7
  %41 = load i32, i32* @STATUS_OBJECT_NAME_NOT_FOUND, align 4
  store i32 %41, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %195

42:                                               ; preds = %7
  %43 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %44 = icmp ne %struct.TYPE_36__* %43, null
  br i1 %44, label %45, label %89

45:                                               ; preds = %42
  %46 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %47 = icmp ne %struct.TYPE_34__* %46, null
  br i1 %47, label %48, label %89

48:                                               ; preds = %45
  %49 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %48
  %56 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @wcslen(i8* %58)
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, 4
  %62 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = udiv i64 %65, 4
  %67 = add i64 %61, %66
  %68 = load i32, i32* @MAX_PATH, align 4
  %69 = sext i32 %68 to i64
  %70 = icmp ugt i64 %67, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %55
  %72 = load i32, i32* @STATUS_OBJECT_NAME_INVALID, align 4
  store i32 %72, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %195

73:                                               ; preds = %55, %48
  %74 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @wcscpy(i32* %27, i8* %76)
  %78 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %79 = call i32 @NtfsFCBIsRoot(%struct.TYPE_36__* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %73
  %82 = call i32 @wcscat(i32* %27, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  br label %83

83:                                               ; preds = %81, %73
  %84 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = bitcast i64* %86 to i8*
  %88 = call i32 @wcscat(i32* %27, i8* %87)
  br label %106

89:                                               ; preds = %45, %42
  %90 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %91 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %94 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 4
  %98 = trunc i64 %97 to i32
  %99 = call i32 @RtlCopyMemory(i32* %27, i32 %92, i32 %98)
  %100 = load i32, i32* @UNICODE_NULL, align 4
  %101 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %102 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %27, i64 %104
  store i32 %100, i32* %105, align 4
  br label %106

106:                                              ; preds = %89, %83
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %109 = load i8*, i8** %12, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i8*, i8** %12, align 8
  br label %114

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %113, %111
  %115 = phi i8* [ %112, %111 ], [ bitcast ([1 x i32]* @.str.2 to i8*), %113 ]
  %116 = load i8*, i8** %12, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i8*, i8** %12, align 8
  %120 = call i32 @wcslen(i8* %119)
  br label %122

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %121, %118
  %123 = phi i32 [ %120, %118 ], [ 0, %121 ]
  %124 = call i8* @NtfsGetFileSize(i32 %107, %struct.TYPE_37__* %108, i8* %115, i32 %123, i8** %22)
  store i8* %124, i8** %21, align 8
  %125 = load i8*, i8** %12, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call %struct.TYPE_36__* @NtfsCreateFCB(i32* %27, i8* %125, i32 %126)
  store %struct.TYPE_36__* %127, %struct.TYPE_36__** %20, align 8
  %128 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %129 = icmp ne %struct.TYPE_36__* %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %122
  %131 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %131, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %195

132:                                              ; preds = %122
  %133 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %134 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %136 = load i32, i32* @FILENAME_ATTRIBUTE, align 4
  %137 = load i32, i32* @NameLength, align 4
  %138 = call i32 @FIELD_OFFSET(i32 %136, i32 %137)
  %139 = call i32 @memcpy(%struct.TYPE_29__* %134, %struct.TYPE_38__* %135, i32 %138)
  %140 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %141 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %144 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %144, i32 0, i32 1
  store i32 %142, i32* %145, align 4
  %146 = load i8*, i8** %21, align 8
  %147 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %148 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %149, i32 0, i32 0
  store i8* %146, i8** %150, align 8
  %151 = load i8*, i8** %21, align 8
  %152 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %153 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %154, i32 0, i32 0
  store i8* %151, i8** %155, align 8
  %156 = load i8*, i8** %22, align 8
  %157 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %158 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %159, i32 0, i32 0
  store i8* %156, i8** %160, align 8
  %161 = load i32, i32* %9, align 4
  %162 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %163 = call %struct.TYPE_35__* @GetStandardInformationFromRecord(i32 %161, %struct.TYPE_37__* %162)
  store %struct.TYPE_35__* %163, %struct.TYPE_35__** %19, align 8
  %164 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %165 = icmp ne %struct.TYPE_35__* %164, null
  br i1 %165, label %166, label %175

166:                                              ; preds = %132
  %167 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %168 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %171 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %169
  store i32 %174, i32* %172, align 8
  br label %175

175:                                              ; preds = %166, %132
  %176 = load i32, i32* %9, align 4
  %177 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %178 = call i32 @NtfsFCBInitializeCache(i32 %176, %struct.TYPE_36__* %177)
  %179 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %180 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %179, i32 0, i32 1
  store i32 1, i32* %180, align 8
  %181 = load i8*, i8** %14, align 8
  %182 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %183 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %182, i32 0, i32 3
  store i8* %181, i8** %183, align 8
  %184 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %188 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* %9, align 4
  %190 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %191 = call i32 @NtfsAddFCBToTable(i32 %189, %struct.TYPE_36__* %190)
  %192 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %193 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %15, align 8
  store %struct.TYPE_36__* %192, %struct.TYPE_36__** %193, align 8
  %194 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %194, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %195

195:                                              ; preds = %175, %130, %71, %40
  %196 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %196)
  %197 = load i32, i32* %8, align 4
  ret i32 %197
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DPRINT(i8*, i32, %struct.TYPE_36__*, %struct.TYPE_34__*, i8*, %struct.TYPE_37__*, %struct.TYPE_36__**) #2

declare dso_local %struct.TYPE_38__* @GetBestFileNameFromRecord(i32, %struct.TYPE_37__*) #2

declare dso_local i32 @wcslen(i8*) #2

declare dso_local i32 @wcscpy(i32*, i8*) #2

declare dso_local i32 @NtfsFCBIsRoot(%struct.TYPE_36__*) #2

declare dso_local i32 @wcscat(i32*, i8*) #2

declare dso_local i32 @RtlCopyMemory(i32*, i32, i32) #2

declare dso_local i8* @NtfsGetFileSize(i32, %struct.TYPE_37__*, i8*, i32, i8**) #2

declare dso_local %struct.TYPE_36__* @NtfsCreateFCB(i32*, i8*, i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_29__*, %struct.TYPE_38__*, i32) #2

declare dso_local i32 @FIELD_OFFSET(i32, i32) #2

declare dso_local %struct.TYPE_35__* @GetStandardInformationFromRecord(i32, %struct.TYPE_37__*) #2

declare dso_local i32 @NtfsFCBInitializeCache(i32, %struct.TYPE_36__*) #2

declare dso_local i32 @NtfsAddFCBToTable(i32, %struct.TYPE_36__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
