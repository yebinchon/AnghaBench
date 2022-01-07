; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_datum_serialize.c_datum_to_bytes_and_advance.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_datum_serialize.c_datum_to_bytes_and_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i32, i32, i64 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"datum should be detoasted before passed to datum_to_bytes_and_advance\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @datum_to_bytes_and_advance(%struct.TYPE_3__* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i8, i8* %18, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i8* @align_and_zero(i8* %16, i8 signext %19, i32* %20)
  store i8* %21, i8** %6, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @check_allowed_data_len(i32 %25, i32 %27)
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @store_att_byval(i8* %29, i32 %30, i32 %31)
  br label %165

33:                                               ; preds = %4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %112

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @DatumGetPointer(i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @VARATT_IS_EXTERNAL(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @ERROR, align 4
  %46 = call i32 @elog(i32 %45, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %111

47:                                               ; preds = %38
  %48 = load i32, i32* %10, align 4
  %49 = call i64 @VARATT_IS_SHORT(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @VARSIZE_SHORT(i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @check_allowed_data_len(i32 %54, i32 %56)
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @memcpy(i8* %58, i32 %59, i32 %60)
  br label %110

62:                                               ; preds = %47
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @TYPE_IS_PACKABLE(i32 %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %62
  %72 = load i32, i32* %10, align 4
  %73 = call i64 @VARATT_CAN_MAKE_SHORT(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %71
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @VARATT_CONVERTED_SHORT_SIZE(i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @check_allowed_data_len(i32 %78, i32 %80)
  %82 = load i8*, i8** %6, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @SET_VARSIZE_SHORT(i8* %82, i32 %83)
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @VARDATA(i32 %87)
  %89 = load i32, i32* %9, align 4
  %90 = sub nsw i32 %89, 1
  %91 = call i32 @memcpy(i8* %86, i32 %88, i32 %90)
  br label %109

92:                                               ; preds = %71, %62
  %93 = load i8*, i8** %6, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i8, i8* %95, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = call i8* @align_and_zero(i8* %93, i8 signext %96, i32* %97)
  store i8* %98, i8** %6, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @VARSIZE(i32 %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @check_allowed_data_len(i32 %101, i32 %103)
  %105 = load i8*, i8** %6, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @memcpy(i8* %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %92, %75
  br label %110

110:                                              ; preds = %109, %51
  br label %111

111:                                              ; preds = %110, %44
  br label %164

112:                                              ; preds = %33
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, -2
  br i1 %116, label %117, label %138

117:                                              ; preds = %112
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i8, i8* %119, align 8
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 99
  %123 = zext i1 %122 to i32
  %124 = call i32 @Assert(i32 %123)
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @DatumGetCString(i32 %125)
  %127 = call i32 @strlen(i32 %126)
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load i32*, i32** %7, align 8
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @check_allowed_data_len(i32 %129, i32 %131)
  %133 = load i8*, i8** %6, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @DatumGetPointer(i32 %134)
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @memcpy(i8* %133, i32 %135, i32 %136)
  br label %163

138:                                              ; preds = %112
  %139 = load i8*, i8** %6, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i8, i8* %141, align 8
  %143 = load i32*, i32** %7, align 8
  %144 = call i8* @align_and_zero(i8* %139, i8 signext %142, i32* %143)
  store i8* %144, i8** %6, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp sgt i32 %147, 0
  %149 = zext i1 %148 to i32
  %150 = call i32 @Assert(i32 %149)
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %9, align 4
  %155 = load i32*, i32** %7, align 8
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @check_allowed_data_len(i32 %154, i32 %156)
  %158 = load i8*, i8** %6, align 8
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @DatumGetPointer(i32 %159)
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @memcpy(i8* %158, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %138, %117
  br label %164

164:                                              ; preds = %163, %111
  br label %165

165:                                              ; preds = %164, %15
  %166 = load i32, i32* %9, align 4
  %167 = load i8*, i8** %6, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i8, i8* %167, i64 %168
  store i8* %169, i8** %6, align 8
  %170 = load i32*, i32** %7, align 8
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %9, align 4
  %173 = sub nsw i32 %171, %172
  %174 = load i32*, i32** %7, align 8
  store i32 %173, i32* %174, align 4
  %175 = load i8*, i8** %6, align 8
  ret i8* %175
}

declare dso_local i8* @align_and_zero(i8*, i8 signext, i32*) #1

declare dso_local i32 @check_allowed_data_len(i32, i32) #1

declare dso_local i32 @store_att_byval(i8*, i32, i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

declare dso_local i64 @VARATT_IS_EXTERNAL(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @VARATT_IS_SHORT(i32) #1

declare dso_local i32 @VARSIZE_SHORT(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i64 @TYPE_IS_PACKABLE(i32, i32) #1

declare dso_local i64 @VARATT_CAN_MAKE_SHORT(i32) #1

declare dso_local i32 @VARATT_CONVERTED_SHORT_SIZE(i32) #1

declare dso_local i32 @SET_VARSIZE_SHORT(i8*, i32) #1

declare dso_local i32 @VARDATA(i32) #1

declare dso_local i32 @VARSIZE(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @DatumGetCString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
