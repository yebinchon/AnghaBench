; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_lib.c__unmarshal_itsf_header.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_lib.c__unmarshal_itsf_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmItsfHeader = type { i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }

@_CHM_ITSF_V2_LEN = common dso_local global i32 0, align 4
@_CHM_ITSF_V3_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ITSF\00", align 1
@UINT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, %struct.chmItsfHeader*)* @_unmarshal_itsf_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_unmarshal_itsf_header(i8** %0, i32* %1, %struct.chmItsfHeader* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.chmItsfHeader*, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.chmItsfHeader* %2, %struct.chmItsfHeader** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @_CHM_ITSF_V2_LEN, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @_CHM_ITSF_V3_LEN, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %157

18:                                               ; preds = %12, %3
  %19 = load i8**, i8*** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %22 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @_unmarshal_char_array(i8** %19, i32* %20, i32 %23, i32 4)
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %28 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %27, i32 0, i32 0
  %29 = call i32 @_unmarshal_int32(i8** %25, i32* %26, i32* %28)
  %30 = load i8**, i8*** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %33 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %32, i32 0, i32 1
  %34 = call i32 @_unmarshal_int32(i8** %30, i32* %31, i32* %33)
  %35 = load i8**, i8*** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %38 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %37, i32 0, i32 2
  %39 = call i32 @_unmarshal_int32(i8** %35, i32* %36, i32* %38)
  %40 = load i8**, i8*** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %43 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %42, i32 0, i32 12
  %44 = call i32 @_unmarshal_uint32(i8** %40, i32* %41, i32* %43)
  %45 = load i8**, i8*** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %48 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %47, i32 0, i32 11
  %49 = call i32 @_unmarshal_uint32(i8** %45, i32* %46, i32* %48)
  %50 = load i8**, i8*** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %53 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @_unmarshal_uuid(i8** %50, i32* %51, i32 %54)
  %56 = load i8**, i8*** %5, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %59 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @_unmarshal_uuid(i8** %56, i32* %57, i32 %60)
  %62 = load i8**, i8*** %5, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %65 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %64, i32 0, i32 3
  %66 = call i32 @_unmarshal_uint64(i8** %62, i32* %63, i64* %65)
  %67 = load i8**, i8*** %5, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %70 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %69, i32 0, i32 4
  %71 = call i32 @_unmarshal_uint64(i8** %67, i32* %68, i64* %70)
  %72 = load i8**, i8*** %5, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %75 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %74, i32 0, i32 5
  %76 = call i32 @_unmarshal_uint64(i8** %72, i32* %73, i64* %75)
  %77 = load i8**, i8*** %5, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %80 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %79, i32 0, i32 6
  %81 = call i32 @_unmarshal_uint64(i8** %77, i32* %78, i64* %80)
  %82 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %83 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @memcmp(i32 %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %157

88:                                               ; preds = %18
  %89 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %90 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %95 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @_CHM_ITSF_V2_LEN, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 0, i32* %4, align 4
  br label %157

100:                                              ; preds = %93
  br label %116

101:                                              ; preds = %88
  %102 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %103 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 3
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %108 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @_CHM_ITSF_V3_LEN, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store i32 0, i32* %4, align 4
  br label %157

113:                                              ; preds = %106
  br label %115

114:                                              ; preds = %101
  store i32 0, i32* %4, align 4
  br label %157

115:                                              ; preds = %113
  br label %116

116:                                              ; preds = %115, %100
  %117 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %118 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %119, 3
  br i1 %120, label %121, label %133

121:                                              ; preds = %116
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = load i8**, i8*** %5, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %129 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %128, i32 0, i32 7
  %130 = call i32 @_unmarshal_uint64(i8** %126, i32* %127, i64* %129)
  br label %132

131:                                              ; preds = %121
  store i32 0, i32* %4, align 4
  br label %157

132:                                              ; preds = %125
  br label %143

133:                                              ; preds = %116
  %134 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %135 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %138 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %136, %139
  %141 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %142 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %141, i32 0, i32 7
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %133, %132
  %144 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %145 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %144, i32 0, i32 5
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @UINT_MAX, align 8
  %148 = icmp sgt i64 %146, %147
  br i1 %148, label %155, label %149

149:                                              ; preds = %143
  %150 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %151 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %150, i32 0, i32 6
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @UINT_MAX, align 8
  %154 = icmp sgt i64 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %149, %143
  store i32 0, i32* %4, align 4
  br label %157

156:                                              ; preds = %149
  store i32 1, i32* %4, align 4
  br label %157

157:                                              ; preds = %156, %155, %131, %114, %112, %99, %87, %17
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @_unmarshal_char_array(i8**, i32*, i32, i32) #1

declare dso_local i32 @_unmarshal_int32(i8**, i32*, i32*) #1

declare dso_local i32 @_unmarshal_uint32(i8**, i32*, i32*) #1

declare dso_local i32 @_unmarshal_uuid(i8**, i32*, i32) #1

declare dso_local i32 @_unmarshal_uint64(i8**, i32*, i64*) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
