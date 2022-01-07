; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_user_tfs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_user_tfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }

@TYPE_BASIC = common dso_local global i64 0, align 8
@TYPE_ENUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"0x%x,\09/* %s */\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"0x5c,\09/* FC_PAD */\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@TYPE_POINTER = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@FC_RP = common dso_local global i64 0, align 8
@FC_UP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"0x%x,\09/* FC_USER_MARSHAL */\0A\00", align 1
@FC_USER_MARSHAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"0x%x,\09/* Alignment= %d, Flags= %02x */\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"NdrFcShort(0x%hx),\09/* Function offset= %hu */\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"NdrFcShort(0x%hx),\09/* %u */\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"NdrFcShort(0x%hx),\09/* Offset= %hd (%u) */\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_17__*, i32*)* @write_user_tfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_user_tfs(i32* %0, %struct.TYPE_17__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* null, i8** %11, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %20 = call %struct.TYPE_17__* @get_user_type(%struct.TYPE_17__* %19, i8** %11)
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %12, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %22 = call i32 @type_memsize(%struct.TYPE_17__* %21)
  store i32 %22, i32* %13, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %24 = call i32 @type_buffer_alignment(%struct.TYPE_17__* %23)
  store i32 %24, i32* %14, align 4
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %26 = call i32 @type_memsize(%struct.TYPE_17__* %25)
  store i32 %26, i32* %15, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = call zeroext i16 @user_type_offset(i8* %27)
  store i16 %28, i16* %16, align 2
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %30 = call i64 @processed(%struct.TYPE_17__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %4, align 4
  br label %185

36:                                               ; preds = %3
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %38 = call i32 @guard_rec(%struct.TYPE_17__* %37)
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %40 = call i64 @user_type_has_variable_size(%struct.TYPE_17__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %13, align 4
  br label %43

43:                                               ; preds = %42, %36
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %45 = call i64 @type_get_type(%struct.TYPE_17__* %44)
  %46 = load i64, i64* @TYPE_BASIC, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %50 = call i64 @type_get_type(%struct.TYPE_17__* %49)
  %51 = load i64, i64* @TYPE_ENUM, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %82

53:                                               ; preds = %48, %43
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %55 = call i64 @type_get_type(%struct.TYPE_17__* %54)
  %56 = load i64, i64* @TYPE_ENUM, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %60 = call zeroext i8 @get_enum_fc(%struct.TYPE_17__* %59)
  store i8 %60, i8* %18, align 1
  br label %64

61:                                               ; preds = %53
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %63 = call zeroext i8 @get_basic_fc(%struct.TYPE_17__* %62)
  store i8 %63, i8* %18, align 1
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %9, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @print_start_tfs_comment(i32* %67, %struct.TYPE_17__* %68, i32 %69)
  %71 = load i32*, i32** %5, align 8
  %72 = load i8, i8* %18, align 1
  %73 = zext i8 %72 to i32
  %74 = load i8, i8* %18, align 1
  %75 = call i32 @string_of_type(i8 zeroext %74)
  %76 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %71, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %75)
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %77, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %79, align 4
  %81 = add i32 %80, 2
  store i32 %81, i32* %79, align 4
  br label %99

82:                                               ; preds = %48
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %84 = call i64 @processed(%struct.TYPE_17__* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %82
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @TRUE, align 4
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @write_embedded_types(i32* %87, i32* null, %struct.TYPE_17__* %88, i32 %91, i32 %92, i32* %93)
  br label %95

95:                                               ; preds = %86, %82
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %95, %64
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %101 = call i64 @type_get_type(%struct.TYPE_17__* %100)
  %102 = load i64, i64* @TYPE_POINTER, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %106 = load i32, i32* @FALSE, align 4
  %107 = call i64 @get_pointer_fc(%struct.TYPE_17__* %105, i32* null, i32 %106)
  %108 = load i64, i64* @FC_RP, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store i32 64, i32* %10, align 4
  br label %125

111:                                              ; preds = %104, %99
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %113 = call i64 @type_get_type(%struct.TYPE_17__* %112)
  %114 = load i64, i64* @TYPE_POINTER, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %118 = load i32, i32* @FALSE, align 4
  %119 = call i64 @get_pointer_fc(%struct.TYPE_17__* %117, i32* null, i32 %118)
  %120 = load i64, i64* @FC_UP, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  store i32 128, i32* %10, align 4
  br label %124

123:                                              ; preds = %116, %111
  store i32 0, i32* %10, align 4
  br label %124

124:                                              ; preds = %123, %122
  br label %125

125:                                              ; preds = %124, %110
  %126 = load i32*, i32** %7, align 8
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %8, align 4
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @update_tfsoff(%struct.TYPE_17__* %128, i32 %129, i32* %130)
  %132 = load i32*, i32** %5, align 8
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @print_start_tfs_comment(i32* %132, %struct.TYPE_17__* %133, i32 %134)
  %136 = load i32*, i32** %5, align 8
  %137 = load i32, i32* @FC_USER_MARSHAL, align 4
  %138 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %136, i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %137)
  %139 = load i32*, i32** %5, align 8
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %14, align 4
  %142 = sub i32 %141, 1
  %143 = or i32 %140, %142
  %144 = load i32, i32* %14, align 4
  %145 = sub i32 %144, 1
  %146 = load i32, i32* %10, align 4
  %147 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %139, i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %143, i32 %145, i32 %146)
  %148 = load i32*, i32** %5, align 8
  %149 = load i16, i16* %16, align 2
  %150 = zext i16 %149 to i32
  %151 = load i16, i16* %16, align 2
  %152 = zext i16 %151 to i32
  %153 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %148, i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %150, i32 %152)
  %154 = load i32*, i32** %5, align 8
  %155 = load i32, i32* %15, align 4
  %156 = trunc i32 %155 to i16
  %157 = zext i16 %156 to i32
  %158 = load i32, i32* %15, align 4
  %159 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %154, i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %157, i32 %158)
  %160 = load i32*, i32** %5, align 8
  %161 = load i32, i32* %13, align 4
  %162 = trunc i32 %161 to i16
  %163 = zext i16 %162 to i32
  %164 = load i32, i32* %13, align 4
  %165 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %160, i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %163, i32 %164)
  %166 = load i32*, i32** %7, align 8
  %167 = load i32, i32* %166, align 4
  %168 = add i32 %167, 8
  store i32 %168, i32* %166, align 4
  %169 = load i32, i32* %9, align 4
  %170 = load i32*, i32** %7, align 8
  %171 = load i32, i32* %170, align 4
  %172 = sub i32 %169, %171
  %173 = trunc i32 %172 to i16
  store i16 %173, i16* %17, align 2
  %174 = load i32*, i32** %5, align 8
  %175 = load i16, i16* %17, align 2
  %176 = sext i16 %175 to i32
  %177 = load i16, i16* %17, align 2
  %178 = sext i16 %177 to i32
  %179 = load i32, i32* %9, align 4
  %180 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %174, i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %176, i32 %178, i32 %179)
  %181 = load i32*, i32** %7, align 8
  %182 = load i32, i32* %181, align 4
  %183 = add i32 %182, 2
  store i32 %183, i32* %181, align 4
  %184 = load i32, i32* %8, align 4
  store i32 %184, i32* %4, align 4
  br label %185

185:                                              ; preds = %125, %32
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local %struct.TYPE_17__* @get_user_type(%struct.TYPE_17__*, i8**) #1

declare dso_local i32 @type_memsize(%struct.TYPE_17__*) #1

declare dso_local i32 @type_buffer_alignment(%struct.TYPE_17__*) #1

declare dso_local zeroext i16 @user_type_offset(i8*) #1

declare dso_local i64 @processed(%struct.TYPE_17__*) #1

declare dso_local i32 @guard_rec(%struct.TYPE_17__*) #1

declare dso_local i64 @user_type_has_variable_size(%struct.TYPE_17__*) #1

declare dso_local i64 @type_get_type(%struct.TYPE_17__*) #1

declare dso_local zeroext i8 @get_enum_fc(%struct.TYPE_17__*) #1

declare dso_local zeroext i8 @get_basic_fc(%struct.TYPE_17__*) #1

declare dso_local i32 @print_start_tfs_comment(i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @print_file(i32*, i32, i8*, ...) #1

declare dso_local i32 @string_of_type(i8 zeroext) #1

declare dso_local i32 @write_embedded_types(i32*, i32*, %struct.TYPE_17__*, i32, i32, i32*) #1

declare dso_local i64 @get_pointer_fc(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @update_tfsoff(%struct.TYPE_17__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
