; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_parse-zip.c_zip_get_name.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_parse-zip.c_zip_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i8*, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.zip_entry = type { i32, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@ZIP_DIR_ENTRY_FIXED_SIZE = common dso_local global i64 0, align 8
@ZIP_LOCAL_ENTRY_FIXED_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @zip_get_name(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.zip_entry, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = bitcast %struct.TYPE_11__* %8 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %4, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %145, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %15
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @SEEK_SET, align 4
  %29 = call i32 @ar_seek(i32 %24, i64 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  store i8* null, i8** %2, align 8
  br label %150

32:                                               ; preds = %21
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = call i32 @zip_parse_directory_entry(%struct.TYPE_10__* %33, %struct.zip_entry* %5)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i8* null, i8** %2, align 8
  br label %150

37:                                               ; preds = %32
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ZIP_DIR_ENTRY_FIXED_SIZE, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i32, i32* @SEEK_SET, align 4
  %47 = call i32 @ar_seek(i32 %40, i64 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %37
  store i8* null, i8** %2, align 8
  br label %150

50:                                               ; preds = %37
  br label %82

51:                                               ; preds = %15
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @SEEK_SET, align 4
  %60 = call i32 @ar_seek(i32 %54, i64 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %51
  store i8* null, i8** %2, align 8
  br label %150

63:                                               ; preds = %51
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = call i32 @zip_parse_local_file_entry(%struct.TYPE_10__* %64, %struct.zip_entry* %5)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  store i8* null, i8** %2, align 8
  br label %150

68:                                               ; preds = %63
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ZIP_LOCAL_ENTRY_FIXED_SIZE, align 8
  %76 = add nsw i64 %74, %75
  %77 = load i32, i32* @SEEK_SET, align 4
  %78 = call i32 @ar_seek(i32 %71, i64 %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %68
  store i8* null, i8** %2, align 8
  br label %150

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81, %50
  %83 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  %86 = call i8* @malloc(i32 %85)
  store i8* %86, i8** %6, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %82
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ar_read(i32 %92, i8* %93, i32 %95)
  %97 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %96, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %89, %82
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @free(i8* %101)
  store i8* null, i8** %2, align 8
  br label %150

103:                                              ; preds = %89
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  store i8 0, i8* %108, align 1
  %109 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 2048
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %103
  %114 = load i8*, i8** %6, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  store i8* %114, i8** %117, align 8
  br label %126

118:                                              ; preds = %103
  %119 = load i8*, i8** %6, align 8
  %120 = call i8* @ar_conv_dos_to_utf8(i8* %119)
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  store i8* %120, i8** %123, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 @free(i8* %124)
  br label %126

126:                                              ; preds = %118, %113
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %144

132:                                              ; preds = %126
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  store i8* %136, i8** %7, align 8
  br label %137

137:                                              ; preds = %141, %132
  %138 = load i8*, i8** %7, align 8
  %139 = call i8* @strchr(i8* %138, i8 signext 92)
  store i8* %139, i8** %7, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = load i8*, i8** %7, align 8
  store i8 47, i8* %142, align 1
  br label %137

143:                                              ; preds = %137
  br label %144

144:                                              ; preds = %143, %126
  br label %145

145:                                              ; preds = %144, %1
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  store i8* %149, i8** %2, align 8
  br label %150

150:                                              ; preds = %145, %100, %80, %67, %62, %49, %36, %31
  %151 = load i8*, i8** %2, align 8
  ret i8* %151
}

declare dso_local i32 @ar_seek(i32, i64, i32) #1

declare dso_local i32 @zip_parse_directory_entry(%struct.TYPE_10__*, %struct.zip_entry*) #1

declare dso_local i32 @zip_parse_local_file_entry(%struct.TYPE_10__*, %struct.zip_entry*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @ar_read(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @ar_conv_dos_to_utf8(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
