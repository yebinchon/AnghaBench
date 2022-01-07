; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_new_procformatstring_type.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_new_procformatstring_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"/* flags:\00", align 1
@MustSize = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [12 x i8] c" must size,\00", align 1
@MustFree = common dso_local global i16 0, align 2
@.str.2 = private unnamed_addr constant [12 x i8] c" must free,\00", align 1
@IsPipe = common dso_local global i16 0, align 2
@.str.3 = private unnamed_addr constant [7 x i8] c" pipe,\00", align 1
@IsIn = common dso_local global i16 0, align 2
@.str.4 = private unnamed_addr constant [5 x i8] c" in,\00", align 1
@IsOut = common dso_local global i16 0, align 2
@.str.5 = private unnamed_addr constant [6 x i8] c" out,\00", align 1
@IsReturn = common dso_local global i16 0, align 2
@.str.6 = private unnamed_addr constant [9 x i8] c" return,\00", align 1
@IsBasetype = common dso_local global i16 0, align 2
@.str.7 = private unnamed_addr constant [12 x i8] c" base type,\00", align 1
@IsByValue = common dso_local global i16 0, align 2
@.str.8 = private unnamed_addr constant [11 x i8] c" by value,\00", align 1
@IsSimpleRef = common dso_local global i16 0, align 2
@.str.9 = private unnamed_addr constant [13 x i8] c" simple ref,\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c" srv size=%u,\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" */\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"NdrFcShort(0x%hx),\09%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"NdrFcShort(0x%x),\09/* stack offset = %u */\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"0x%02x,\09/* %s */\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"0x0,\0A\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"NdrFcShort(0x%x),\09/* type offset = %u */\0A\00", align 1
@pointer_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i32*)* @write_new_procformatstring_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_new_procformatstring_type(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca [128 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call zeroext i8 @get_parameter_fc(i32* %16, i32 %17, i16* %14, i32* %12, i32* %13)
  store i8 %18, i8* %15, align 1
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %20 = call i32 @strcpy(i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %21 = load i16, i16* %14, align 2
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* @MustSize, align 2
  %24 = zext i16 %23 to i32
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %29 = call i32 @strcat(i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %5
  %31 = load i16, i16* %14, align 2
  %32 = zext i16 %31 to i32
  %33 = load i16, i16* @MustFree, align 2
  %34 = zext i16 %33 to i32
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %39 = call i32 @strcat(i8* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %30
  %41 = load i16, i16* %14, align 2
  %42 = zext i16 %41 to i32
  %43 = load i16, i16* @IsPipe, align 2
  %44 = zext i16 %43 to i32
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %49 = call i32 @strcat(i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %40
  %51 = load i16, i16* %14, align 2
  %52 = zext i16 %51 to i32
  %53 = load i16, i16* @IsIn, align 2
  %54 = zext i16 %53 to i32
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %59 = call i32 @strcat(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %50
  %61 = load i16, i16* %14, align 2
  %62 = zext i16 %61 to i32
  %63 = load i16, i16* @IsOut, align 2
  %64 = zext i16 %63 to i32
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %69 = call i32 @strcat(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %60
  %71 = load i16, i16* %14, align 2
  %72 = zext i16 %71 to i32
  %73 = load i16, i16* @IsReturn, align 2
  %74 = zext i16 %73 to i32
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %79 = call i32 @strcat(i8* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %70
  %81 = load i16, i16* %14, align 2
  %82 = zext i16 %81 to i32
  %83 = load i16, i16* @IsBasetype, align 2
  %84 = zext i16 %83 to i32
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %89 = call i32 @strcat(i8* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %80
  %91 = load i16, i16* %14, align 2
  %92 = zext i16 %91 to i32
  %93 = load i16, i16* @IsByValue, align 2
  %94 = zext i16 %93 to i32
  %95 = and i32 %92, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %99 = call i32 @strcat(i8* %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %90
  %101 = load i16, i16* %14, align 2
  %102 = zext i16 %101 to i32
  %103 = load i16, i16* @IsSimpleRef, align 2
  %104 = zext i16 %103 to i32
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %109 = call i32 @strcat(i8* %108, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %100
  %111 = load i16, i16* %14, align 2
  %112 = zext i16 %111 to i32
  %113 = ashr i32 %112, 13
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %110
  %116 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %117 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %118 = call i32 @strlen(i8* %117)
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  %121 = load i16, i16* %14, align 2
  %122 = zext i16 %121 to i32
  %123 = ashr i32 %122, 13
  %124 = mul nsw i32 %123, 8
  %125 = trunc i32 %124 to i16
  %126 = call i32 @sprintf(i8* %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i16 zeroext %125)
  br label %127

127:                                              ; preds = %115, %110
  %128 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %129 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %130 = call i32 @strlen(i8* %129)
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %128, i64 %131
  %133 = getelementptr inbounds i8, i8* %132, i64 -1
  %134 = call i32 @strcpy(i8* %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %135 = load i32*, i32** %6, align 8
  %136 = load i32, i32* %7, align 4
  %137 = load i16, i16* %14, align 2
  %138 = zext i16 %137 to i32
  %139 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %140 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %135, i32 %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %138, i8* %139)
  %141 = load i32*, i32** %6, align 8
  %142 = load i32, i32* %7, align 4
  %143 = load i32*, i32** %10, align 8
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %10, align 8
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %141, i32 %142, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i32 %144, i32 %146)
  %148 = load i16, i16* %14, align 2
  %149 = zext i16 %148 to i32
  %150 = load i16, i16* @IsBasetype, align 2
  %151 = zext i16 %150 to i32
  %152 = and i32 %149, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %127
  %155 = load i32*, i32** %6, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load i8, i8* %15, align 1
  %158 = zext i8 %157 to i32
  %159 = load i8, i8* %15, align 1
  %160 = call i32 @string_of_type(i8 zeroext %159)
  %161 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %155, i32 %156, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %158, i32 %160)
  %162 = load i32*, i32** %6, align 8
  %163 = load i32, i32* %7, align 4
  %164 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %162, i32 %163, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  br label %171

165:                                              ; preds = %127
  %166 = load i32*, i32** %6, align 8
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* %13, align 4
  %170 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %166, i32 %167, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0), i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %165, %154
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* @pointer_size, align 4
  %174 = call i64 @max(i32 %172, i32 %173)
  %175 = load i32*, i32** %10, align 8
  %176 = load i32, i32* %175, align 4
  %177 = zext i32 %176 to i64
  %178 = add nsw i64 %177, %174
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %175, align 4
  ret i32 6
}

declare dso_local zeroext i8 @get_parameter_fc(i32*, i32, i16*, i32*, i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i16 zeroext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @print_file(i32*, i32, i8*, ...) #1

declare dso_local i32 @string_of_type(i8 zeroext) #1

declare dso_local i64 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
