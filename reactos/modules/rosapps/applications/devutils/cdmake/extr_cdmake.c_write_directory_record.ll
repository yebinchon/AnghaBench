; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/cdmake/extr_cdmake.c_write_directory_record.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/cdmake/extr_cdmake.c_write_directory_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i8, i8, i8, i8, i8 }

@cd = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@SECTOR_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c";1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i64)* @write_directory_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_directory_record(%struct.TYPE_6__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 130
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 131
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %11
  store i32 1, i32* %7, align 4
  br label %24

18:                                               ; preds = %14
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = mul nsw i32 %22, 2
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %18, %17
  br label %57

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %55 [
    i32 130, label %27
    i32 131, label %27
    i32 128, label %28
    i32 129, label %33
  ]

27:                                               ; preds = %25, %25
  store i32 1, i32* %7, align 4
  br label %56

28:                                               ; preds = %25
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strlen(i8* %31)
  store i32 %32, i32* %7, align 4
  br label %56

33:                                               ; preds = %25
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = add nsw i32 %37, 2
  store i32 %38, i32* %7, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %33
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = add nsw i32 1, %50
  %52 = load i32, i32* %7, align 4
  %53 = add i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %46, %33
  br label %56

55:                                               ; preds = %25
  store i32 1, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %54, %28, %27
  br label %57

57:                                               ; preds = %56, %24
  %58 = load i32, i32* %7, align 4
  %59 = add i32 33, %58
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %63, %57
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cd, i32 0, i32 0), align 8
  %68 = load i32, i32* %8, align 4
  %69 = zext i32 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = load i64, i64* @SECTOR_SIZE, align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = call i32 (...) @fill_sector()
  br label %75

75:                                               ; preds = %73, %66
  %76 = load i32, i32* %8, align 4
  %77 = trunc i32 %76 to i8
  %78 = call i32 @write_byte(i8 signext %77)
  %79 = call i32 @write_byte(i8 signext 0)
  %80 = load i64, i64* %6, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @write_both_endian_dword(i32 %85)
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @write_both_endian_dword(i32 %89)
  br label %100

91:                                               ; preds = %75
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @write_both_endian_dword(i32 %94)
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @write_both_endian_dword(i32 %98)
  br label %100

100:                                              ; preds = %91, %82
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %104, 1900
  %106 = trunc i32 %105 to i8
  %107 = call i32 @write_byte(i8 signext %106)
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i8, i8* %110, align 4
  %112 = call i32 @write_byte(i8 signext %111)
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i8, i8* %115, align 1
  %117 = call i32 @write_byte(i8 signext %116)
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 3
  %121 = load i8, i8* %120, align 2
  %122 = call i32 @write_byte(i8 signext %121)
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 4
  %126 = load i8, i8* %125, align 1
  %127 = call i32 @write_byte(i8 signext %126)
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 5
  %131 = load i8, i8* %130, align 4
  %132 = call i32 @write_byte(i8 signext %131)
  %133 = call i32 @write_byte(i8 signext 0)
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 3
  %136 = load i8, i8* %135, align 8
  %137 = call i32 @write_byte(i8 signext %136)
  %138 = call i32 @write_byte(i8 signext 0)
  %139 = call i32 @write_byte(i8 signext 0)
  %140 = call i32 @write_both_endian_word(i32 1)
  %141 = load i32, i32* %7, align 4
  %142 = trunc i32 %141 to i8
  %143 = call i32 @write_byte(i8 signext %142)
  %144 = load i32, i32* %5, align 4
  switch i32 %144, label %192 [
    i32 130, label %145
    i32 131, label %147
    i32 128, label %149
    i32 129, label %163
  ]

145:                                              ; preds = %100
  %146 = call i32 @write_byte(i8 signext 0)
  br label %192

147:                                              ; preds = %100
  %148 = call i32 @write_byte(i8 signext 1)
  br label %192

149:                                              ; preds = %100
  %150 = load i64, i64* %6, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @write_string_as_big_endian_unicode(i8* %155)
  br label %162

157:                                              ; preds = %149
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @write_string(i8* %160)
  br label %162

162:                                              ; preds = %157, %152
  br label %192

163:                                              ; preds = %100
  %164 = load i64, i64* %6, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @write_string_as_big_endian_unicode(i8* %169)
  br label %191

171:                                              ; preds = %163
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @write_string(i8* %174)
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  %178 = load i8*, i8** %177, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 0
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %171
  %184 = call i32 @write_byte(i8 signext 46)
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 2
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @write_string(i8* %187)
  br label %189

189:                                              ; preds = %183, %171
  %190 = call i32 @write_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %191

191:                                              ; preds = %189, %166
  br label %192

192:                                              ; preds = %100, %191, %162, %147, %145
  %193 = load i32, i32* %7, align 4
  %194 = and i32 %193, 1
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  %197 = call i32 @write_byte(i8 signext 0)
  br label %198

198:                                              ; preds = %196, %192
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fill_sector(...) #1

declare dso_local i32 @write_byte(i8 signext) #1

declare dso_local i32 @write_both_endian_dword(i32) #1

declare dso_local i32 @write_both_endian_word(i32) #1

declare dso_local i32 @write_string_as_big_endian_unicode(i8*) #1

declare dso_local i32 @write_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
